#!/bin/bash
echo "$DOCKER_PASSWORD" | docker login -u "$DOCKER_USERNAME" --password-stdin  registry.cn-hangzhou.aliyuncs.com
docker push $FULL_IMAGE_NAME