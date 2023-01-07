import { App } from "@serverless-stack/resources";
import { ServerlessImageHandler } from "./ServerlessImageHandler/ServerlessImageHandler";
import { TRPC } from "./TRPC";
import { Prisma } from "./Layers/Prisma";

export default function (app: App) {
  // ! Be sure this does not run on production
  if (app.local || app.stageName === "staging") {
    app.setDefaultRemovalPolicy("destroy");
  } else {
    app.setDefaultRemovalPolicy("retain");
  }
  app.setDefaultFunctionProps({
    runtime: "nodejs16.x",
    srcPath: "services",
    bundle: {
      format: "esm",
    },
  });
  app.stack(ServerlessImageHandler)
  app.stack(Prisma)
  app.stack(TRPC)
}
