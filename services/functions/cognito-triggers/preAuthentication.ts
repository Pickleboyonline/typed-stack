import { PreAuthenticationTriggerHandler } from "aws-lambda";

export const handler: PreAuthenticationTriggerHandler = async (event) => {
  // TODO: Create user object if needed
  console.log("Event: ", JSON.stringify(event, null, 4));
  return event;
};
