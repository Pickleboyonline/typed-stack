import { Api, StackContext } from "@serverless-stack/resources";

export function GraphQLApi({ stack }: StackContext) {
  const api = new Api(stack, "GraphQLApi", {
    defaults: {},
    routes: {
      "POST /graphql": {
        type: "graphql",
        function: {
          handler: "functions/graphql/graphql.handler",
        },
        pothos: {
          schema: "services/functions/graphql/schema.ts",
          output: "graphql/schema.graphql",
          commands: [
            "npx genql --output ./graphql/genql --schema ./graphql/schema.graphql --esm",
          ],
        },
      },
    },
  });

  stack.addOutputs({
    API: api.url,
  });

  return { api };
}
