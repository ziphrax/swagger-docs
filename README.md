# Prerequisites

Use VS Code remote development containers to open the project.

Download the below jar and place it in the .libs directory

https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/6.3.0/openapi-generator-cli-6.3.0.jar

```bash
wget https://repo1.maven.org/maven2/org/openapitools/openapi-generator-cli/6.3.0/openapi-generator-cli-6.3.0.jar -O ./.libs/openapi-generator-cli-6.3.0.jar
```

# Validation instructions

Run validate.sh. This will validate using the open api generator

```bash
./validate.sh
```

# Generate Output Instructions

Run generate.sh. This will generate the api documentation and typescript package using the open api generator

```bash
./generate.sh
```

# TODO:

- Add the jar to the docker file

# Trouble shooting

If you get a permission denied error when attempting to execute one of the scripts add the execute permission

```bash
chmod +x ./validate.sh
chmod +x ./generate.sh
```