#!/usr/bin/env bash

rm -rf api
openapi-generator generate \
    --input-spec ~/code/hahabit/openapi.yaml \
    --generator-name swift5 \
    --output api

