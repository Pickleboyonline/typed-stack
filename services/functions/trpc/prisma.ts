/**
 * Instantiates a single instance PrismaClient and save it on the global object.
 * @link https://www.prisma.io/docs/support/help-articles/nextjs-prisma-client-dev-practices
 */
import { PrismaClient } from "@prisma/client";

const prismaGlobal = global as typeof global & {
  prisma?: PrismaClient;
};

await Promise.resolve(23);

export const prisma: PrismaClient =
  prismaGlobal.prisma ||
  new PrismaClient({
    log: process.env.IS_LOCAL ? ["query", "error", "warn"] : ["error"],
    datasources: {
      db: {
        ...await(
          async (): Promise<{} | { url: string }> => {
            try {
              const { Config } = await import("@serverless-stack/node/config");
              const obj = { url: Config.DATABASE_URL };
              return {};
            } catch (e) {
              console.log("Could not grab database URL: ", e);
              return {};
            }
          }
        )(),
      },
    },
  });

if (!process.env.IS_LOCAL) {
  prismaGlobal.prisma = prisma;
}
