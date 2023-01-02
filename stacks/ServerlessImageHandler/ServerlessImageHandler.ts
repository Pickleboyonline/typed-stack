import { Bucket, StackContext, use } from "@serverless-stack/resources";
import * as path from "path";
import * as cfninc from "aws-cdk-lib/cloudformation-include";

/**
 * Bootstraps a serverless image handler instance
 */
export function ServerlessImageHandler({ stack, app }: StackContext) {
  const bucket = new Bucket(stack, "Media");

  const sih = new cfninc.CfnInclude(
    stack,
    app.stage + "-" + app.name + "-ServerlessImageHandler-",
    {
      templateFile: path.join(
        app.appPath,
        "stacks",
        "ServerlessImageHandler",
        "serverless-image-handler.yaml"
      ),
      preserveLogicalIds: false,
      parameters: {
        SourceBucketsParameter: [bucket.bucketName].join(","),
        AutoWebPParameter: "YES",
        DeployDemoUIParameter: "NO",
        // TODO: Make 7 for prod
        LogRetentionPeriodParameter:
          app.local || app.stageName === "staging" ? "1" : "7",
      },
    }
  );

  stack.addOutputs({
    apiEndpoint: sih.getOutput("ApiEndpoint"),
    demoInterface: sih.getOutput("DemoUrl"),
    sihBucketName: bucket.bucketName,
  });

  return { sih, bucket };
}
