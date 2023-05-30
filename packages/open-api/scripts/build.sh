echo "Please run from open-api folder!" &&
npx esrun src/generateOpenApiSchema.ts &&
npx openapi-generator-cli generate -g kotlin -i ./open-api-schema.json -o ./clients/kotlin-client &&
npx openapi-generator-cli generate -g swift5 -i ./open-api-schema.json -o ./clients/swift-client
# -c ./swift-generator-config.json
