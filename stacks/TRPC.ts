import { StackContext, Api, use, Config } from "@serverless-stack/resources";
import { Prisma } from "./Layers/Prisma";
import { Secrets } from "./Secrets";

/**
 * tRPC API Gateway: https://trpc.io/docs/serverless
 *
 * @param param0
 */
export function TRPC({ stack }: StackContext) {
  const { prismaLayer } = use(Prisma);
  const { DATABASE_URL } = use(Secrets);

  const trcpHandlerRoute = "functions/trpc/index.handler";
  const api = new Api(stack, "tRPC-Api", {
    routes: {
      "GET /{proxy+}": trcpHandlerRoute,
      "POST /{proxy+}": trcpHandlerRoute,
    },
    defaults: {
      function: {
        bundle: {
          externalModules: prismaLayer ? ["@prisma/client", ".prisma"] : [],
          commandHooks: {
            beforeBundling: () => [],
            beforeInstall: () => [],
            afterBundling: (inputDir, outputDir) => [
              "pwd",
              // "cd " + inputDir,
              "node ",
            ],
          },
        },
        bind: [DATABASE_URL],
      },
    },
  });

  stack.addOutputs({
    ApiEndpoint: api.url,
  });
}
