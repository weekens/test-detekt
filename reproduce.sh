#!/bin/bash

set -x

curl -SL https://github.com/arturbosch/detekt/releases/download/1.0.0-RC14/detekt-cli-1.0.0-RC14-all.jar -o /tmp/detekt-cli-1.0.0-RC14-all.jar

java -jar /tmp/detekt-cli-1.0.0-RC14-all.jar --generate-config

java -jar /tmp/detekt-cli-1.0.0-RC14-all.jar --config default-detekt-config.yml --disable-default-rulesets
