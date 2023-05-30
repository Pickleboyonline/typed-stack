import { openApiDocument } from "@typed-stack/trpc/src/server/open-api-documentation";
import fsExtra from "fs-extra";
import path from "path";
import { exec } from "child_process";

const promisifiedExec = async (command: string): Promise<void> => {
  function promiseFromChildProcess() {
    return new Promise<void>(function (resolve, reject) {
      const child = exec(command);
      child.addListener("error", reject);
      child.addListener("exit", () => resolve());
    });
  }
  return promiseFromChildProcess();
};

const generateSchema = () => {
  const filePath = path.join(__dirname, "..", "open-api-schema.json");

  // JSON.stringify('', null, 4)

  fsExtra.writeJSONSync(filePath, openApiDocument, {
    // @ts-ignore
    replacer: null,
    spaces: 2,
  });
  console.log("File written!");
};

const generateClients = async () => {
    
};

const main = () => {
  generateSchema();
};

main();
