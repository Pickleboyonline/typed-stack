import { Amplify, Auth } from "aws-amplify";
import { Environment } from "@constants";

export function configureAmplify() {
  Amplify.configure({
    Auth: {
      // REQUIRED - Amazon Cognito Region
      region: Environment.region,

      // OPTIONAL - Amazon Cognito Federated Identity Pool Region
      // Required only if it's different from Amazon Cognito Region
      identityPoolRegion: "XX-XXXX-X",

      // OPTIONAL - Amazon Cognito User Pool ID
      userPoolId: Environment.cognitoUserPoolId,

      // OPTIONAL - Amazon Cognito Web Client ID (26-char alphanumeric string)
      // userPoolWebClientId: "a1b2c3d4e5f6g7h8i9j0k1l2m3",

      // OPTIONAL - Enforce user authentication prior to accessing AWS resources or not
      // mandatorySignIn: false,
    },
  });
}
