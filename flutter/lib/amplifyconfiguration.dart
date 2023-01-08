// TODO Implement this library.

import 'package:flutter_dotenv/flutter_dotenv.dart';

String getAmplifyConfiguration() {
  final amplifyconfig = ''' {
    "UserAgent": "aws-amplify-cli/2.0",
    "Version": "1.0",
    "auth": {
        "plugins": {
            "awsCognitoAuthPlugin": {
                "IdentityManager": {
                    "Default": {}
                },
                "CredentialsProvider": {
                    "CognitoIdentity": {
                        "Default": {
                            "PoolId": "${dotenv.env['DEV_IDENTITY_POOL_ID']!}",
                            "Region": "${dotenv.env['DEV_AWS_REGION']!}"
                        }
                    }
                },
                "CognitoUserPool": {
                    "Default": {
                        "PoolId": "${dotenv.env['DEV_USER_POOL_ID']!}",
                        "AppClientId": "${dotenv.env['DEV_USER_POOL_CLIENT_ID']!}",
                        "Region": "${dotenv.env['DEV_AWS_REGION']!}"
                    }
                }
            }
        }
    }
  }''';

  return amplifyconfig;
}
