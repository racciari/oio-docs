#!/bin/bash -e

mkdir -p result-docs

for guide in arch-design admin-guide user-guide cli-reference project-guide vagrant-box docker-image \
                        install-swift-s3 sandbox-guide sdk-guide install-guide-x1-raspbian; do
    tools/build-rst.sh doc/$guide --build build \
        --target "$guide"
done

tools/build-install-guides-rst.sh
