openapi-generator-cli generate -g kotlin -i ./../open-api-schema/petstore.yaml -o ./../packages/kotlin-client
openapi-generator-cli generate -g swift5 -i ./../open-api-schema/petstore.yaml -o ./../packages/swift-client -c ./swift-generator-config.json
# mkdir -p ./../kotlin-packages/kotlin-client
cd ./../packages/kotlin-client
gradle wrapper