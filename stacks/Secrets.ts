import { Config, StackContext } from "@serverless-stack/resources";

export function Secrets({stack}: StackContext) {
    const DATABASE_URL = new Config.Secret(stack, "DATABASE_URL");

    return {
        DATABASE_URL
    }
}