#!/bin/bash -e

mkdir -p result-docs

for guide in arch-design \
             admin-guide \
             deployment-guide \
             user-guide \
             cli-reference \
             project-guide \
             vagrant-box \
             docker-image \
             install-swift-s3 \
             sandbox-guide \
             sdk-guide \
             install-guide-x1-raspbian \
             install-guide-x3-rpi-ubuntu
do
    tools/build-rst.sh doc/$guide --build build \
        --target "$guide"
done

tools/build-install-guides-rst.sh
