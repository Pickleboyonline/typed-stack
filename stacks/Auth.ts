import {
  Cognito,
  Config,
  StackContext,
  use,
} from "@serverless-stack/resources";
import { Prisma } from "./Layers/Prisma";
import { Secrets } from "./Secrets";

/**
 * We use Cognito for simplicity, but you can use any auth provider like Auth0
 * NOTE: BE CAREFUL WITH SNS BILLING. If this endpoint is not behind a WAF,
 * someone can spam user creation/validation and run up your bill.
 *
 * @param param0
 */
export function Auth({ stack }: StackContext) {
  const { prismaLayer } = use(Prisma);
  const { DATABASE_URL } = use(Secrets);

  const auth = new Cognito(stack, "Auth", {
    login: ["email"],
    cdk: {
      userPool: {
        selfSignUpEnabled: true,
      },
    },
    triggers: {
      preAuthentication: "functions/cognito-triggers/preAuthentication.handler",
    },
    defaults: {
      function: {
        timeout: 20,
        bundle: {
          externalModules: prismaLayer ? ["@prisma/client", ".prisma"] : [],
        },
        bind: [DATABASE_URL],
      },
    },
  });

  stack.addOutputs({
    AuthUserPoolId: auth.userPoolId,
    AuthUserPoolClientId: auth.userPoolClientId,
    identityPoolID: auth.cognitoIdentityPoolId ?? "",
  });

  return {
    auth,
  };
}
