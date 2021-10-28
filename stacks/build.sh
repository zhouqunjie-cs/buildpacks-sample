#!/usr/bin/env bash

set -eux

STACK_ID=com.atbug.buildpacks.example.stacks.maven

docker build --build-arg stack_id=${STACK_ID} -t addozhang/samples-buildpacks-stack-build:latest ./build
docker build --build-arg stack_id=${STACK_ID} -t addozhang/samples-buildpacks-stack-run:latest ./run