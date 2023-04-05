import { generateOpenApiDocument } from "trpc-openapi";
import { appRouter } from "./routers/_app";
import fsExtra from "fs-extra";
import path from "path";

const main = () => {
  const docs = generateOpenApiDocument(appRouter, {
    baseUrl: "something",
    version: "1.0.1",
    title: "hi",
  });
  const filePath = path.join(
    __dirname,
    "..",
    "..",
    "..",
    "open-api-schema",
    "docs.json"
  );

  // JSON.stringify('', null, 4)

  fsExtra.writeJSONSync(filePath, docs, {
    replacer: null,
    spaces: 2,
  });
  console.log("File written!");
};

main();
