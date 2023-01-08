import { awsLambdaRequestHandler } from "@trpc/server/adapters/aws-lambda";
import { createContext } from "./context";
import { appRouter } from "./routers/_app";

export const handler = awsLambdaRequestHandler({
  router: appRouter,
  createContext,
});
