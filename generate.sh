mkdir -p ./out/openapi

java -jar ./.libs/openapi-generator-cli-6.3.0.jar \
    generate \
    --input-spec ./specs/api.yml \
    --generator-name openapi \
    --output ./out/openapi \
    --strict-spec true 

mkdir -p ./out/typescript

java \
    -Dmodels \
    -Dapis \
    -DsupportingFiles=index.ts,api.ts,package.json,tsconfig.json \
    -jar ./.libs/openapi-generator-cli-6.3.0.jar \
        generate \
        --input-spec ./specs/api.yml \
        --generator-name typescript-axios \
        --template-dir ./out/typescript \
        --output ./out/typescript \
        --model-name-prefix I \
        --additional-properties=generateAliasAsModel=true \
        --additional-properties=supportsES6=true \
        --additional-properties=withInterfaces=true \
        --additional-properties=withSeparateModelsAndApi=true \
        --additional-properties=disallowAdditionalPropertiesIfNotPresent=true \
        --additional-properties=withoutPrefixEnums=false \
        --additional-properties=modelPackage=model \
        --additional-properties=apiPackage=api \
        --additional-properties=npmName=@ziphrax/example-api 