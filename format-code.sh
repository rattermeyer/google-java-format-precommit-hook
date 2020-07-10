#!/usr/bin/env sh
VERSION="1.8"
mkdir -p .cache
cd .cache
if [ ! -f "google-java-format-${VERSION}-all-deps.jar" ]
then
    curl -sLJO "https://github.com/google/google-java-format/releases/download/google-java-format-${VERSION}/google-java-format-${VERSION}-all-deps.jar"
    chmod 755 google-java-format-${VERSION}-all-deps.jar
fi
cd ..

java -jar ".cache/google-java-format-${VERSION}-all-deps.jar" --replace $@
