import { StackContext, Api, use, Config } from "@serverless-stack/resources";
import { Prisma } from "./Layers/Prisma";

/**
 * tRPC API Gateway: https://trpc.io/docs/serverless
 * 
 * @param param0 
 */
export function TRPC({ stack }: StackContext) {
  const { prismaLayer } = use(Prisma);

  const DATABASE_URL = new Config.Secret(stack, "DATABASE_URL");

  const trcpHandlerRoute = "trpc/index.handler";
  const api = new Api(stack, "tRPC-Api", {
    routes: {
      "GET /{proxy+}": trcpHandlerRoute,
      "POST /{proxy+}": trcpHandlerRoute,
    },
    defaults: {
      function: {
        bundle: {
          externalModules: prismaLayer ? ["@prisma/client", ".prisma"] : [],
        },
        bind: [DATABASE_URL]
      },
    },
  });

  stack.addOutputs({
    ApiEndpoint: api.url,
  });
}
