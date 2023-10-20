#!/bin/sh

PROJECT=snowdreamtech/nginx
ENABLED_MODULES="brotli headers-more modsecurity geoip2 subs-filter"

# 1.25.2, mainline, 1, 1.25, latest, 1.25.2-bookworm, mainline-bookworm, 1-bookworm, 1.25-bookworm, bookworm
NGINX_FROM_IMAGE=nginx:1.25.2
docker buildx build --platform=linux/386,linux/amd64,linux/arm/v5,linux/arm/v7,linux/arm64/v8,linux/mips64le,linux/ppc64le,linux/s390x \
--build-arg NGINX_FROM_IMAGE=${NGINX_FROM_IMAGE} \
--build-arg ENABLED_MODULES="${ENABLED_MODULES}" \
--file Dockerfile \
-t ${PROJECT}:1.25.2 \
-t ${PROJECT}:mainline \
-t ${PROJECT}:1 \
-t ${PROJECT}:1.25 \
-t ${PROJECT}:latest \
-t ${PROJECT}:1.25.2-bookworm \
-t ${PROJECT}:mainline-bookworm \
-t ${PROJECT}:1-bookworm \
-t ${PROJECT}:1.25-bookworm \
-t ${PROJECT}:bookworm \
--no-cache=true \
. \
--push

# 1.25.2-perl, mainline-perl, 1-perl, 1.25-perl, perl, 1.25.2-bookworm-perl, mainline-bookworm-perl, 1-bookworm-perl, 1.25-bookworm-perl, bookworm-perl
NGINX_FROM_IMAGE=nginx:1.25.2-perl
docker buildx build --platform=linux/386,linux/amd64,linux/arm/v5,linux/arm/v7,linux/arm64/v8,linux/mips64le,linux/ppc64le,linux/s390x \
--build-arg NGINX_FROM_IMAGE=${NGINX_FROM_IMAGE} \
--build-arg ENABLED_MODULES="${ENABLED_MODULES}" \
--file Dockerfile \
-t ${PROJECT}:1.25.2-perl \
-t ${PROJECT}:mainline-perl \
-t ${PROJECT}:1-perl \
-t ${PROJECT}:1.25-perl \
-t ${PROJECT}:perl \
-t ${PROJECT}:1.25.2-bookworm-perl \
-t ${PROJECT}:mainline-bookworm-perl \
-t ${PROJECT}:1-bookworm-perl \
-t ${PROJECT}:1.25-bookworm-perl \
-t ${PROJECT}:bookworm-perl \
--no-cache=true \
. \
--push

# 1.25.2-alpine, mainline-alpine, 1-alpine, 1.25-alpine, alpine, 1.25.2-alpine3.18, mainline-alpine3.18, 1-alpine3.18, 1.25-alpine3.18, alpine3.18
NGINX_FROM_IMAGE=nginx:1.25.2-alpine
docker buildx build --platform=linux/386,linux/amd64,linux/arm/v5,linux/arm/v7,linux/arm64/v8,linux/mips64le,linux/ppc64le,linux/s390x \
--build-arg NGINX_FROM_IMAGE=${NGINX_FROM_IMAGE} \
--build-arg ENABLED_MODULES="${ENABLED_MODULES}" \
--file Dockerfile.alpine \
-t ${PROJECT}:1.25.2-alpine \
-t ${PROJECT}:mainline-alpine \
-t ${PROJECT}:1-alpine \
-t ${PROJECT}:1.25-alpine \
-t ${PROJECT}:alpine \
-t ${PROJECT}:1.25.2-alpine3.18 \
-t ${PROJECT}:mainline-alpine3.18 \
-t ${PROJECT}:1-alpine3.18 \
-t ${PROJECT}:1.25-alpine3.18 \
-t ${PROJECT}:alpine3.18 \
--no-cache=true \
. \
--push

# 1.25.2-alpine-perl, mainline-alpine-perl, 1-alpine-perl, 1.25-alpine-perl, alpine-perl, 1.25.2-alpine3.18-perl, mainline-alpine3.18-perl, 1-alpine3.18-perl, 1.25-alpine3.18-perl, alpine3.18-perl
NGINX_FROM_IMAGE=nginx:1.25.2-alpine-perl
docker buildx build --platform=linux/386,linux/amd64,linux/arm/v5,linux/arm/v7,linux/arm64/v8,linux/mips64le,linux/ppc64le,linux/s390x \
--build-arg NGINX_FROM_IMAGE=${NGINX_FROM_IMAGE} \
--build-arg ENABLED_MODULES="${ENABLED_MODULES}" \
--file Dockerfile.alpine \
-t ${PROJECT}:1.25.2-alpine-perl \
-t ${PROJECT}:mainline-alpine-perl \
-t ${PROJECT}:1-alpine-perl \
-t ${PROJECT}:1.25-alpine-perl \
-t ${PROJECT}:alpine-perl \
-t ${PROJECT}:1.25.2-alpine3.18-perl \
-t ${PROJECT}:mainline-alpine3.18-perl \
-t ${PROJECT}:1-alpine3.18-perl \
-t ${PROJECT}:1.25-alpine3.18-perl \
-t ${PROJECT}:alpine3.18-perl \
--no-cache=true \
. \
--push

# 1.25.2-alpine-slim, mainline-alpine-slim, 1-alpine-slim, 1.25-alpine-slim, alpine-slim, 1.25.2-alpine3.18-slim, mainline-alpine3.18-slim, 1-alpine3.18-slim, 1.25-alpine3.18-slim, alpine3.18-slim
NGINX_FROM_IMAGE=nginx:1.25.2-alpine-slim
docker buildx build --platform=linux/386,linux/amd64,linux/arm/v5,linux/arm/v7,linux/arm64/v8,linux/mips64le,linux/ppc64le,linux/s390x \
--build-arg NGINX_FROM_IMAGE=${NGINX_FROM_IMAGE} \
--build-arg ENABLED_MODULES="${ENABLED_MODULES}" \
--file Dockerfile.alpine \
-t ${PROJECT}:1.25.2-alpine-slim \
-t ${PROJECT}:mainline-alpine-slim \
-t ${PROJECT}:1-alpine-slim \
-t ${PROJECT}:1.25-alpine-slim \
-t ${PROJECT}:alpine-slim \
-t ${PROJECT}:1.25.2-alpine3.18-slim \
-t ${PROJECT}:mainline-alpine3.18-slim \
-t ${PROJECT}:1-alpine3.18-slim \
-t ${PROJECT}:1.25-alpine3.18-slim \
-t ${PROJECT}:alpine3.18-slim \
--no-cache=true \
. \
--push

# 1.24.0, stable, 1.24, 1.24.0-bullseye, stable-bullseye, 1.24-bullseye
NGINX_FROM_IMAGE=nginx:1.24.0
docker buildx build --platform=linux/386,linux/amd64,linux/arm/v5,linux/arm/v7,linux/arm64/v8,linux/mips64le,linux/ppc64le,linux/s390x \
--build-arg NGINX_FROM_IMAGE=${NGINX_FROM_IMAGE} \
--build-arg ENABLED_MODULES="${ENABLED_MODULES}" \
--file Dockerfile \
-t ${PROJECT}:1.24.0 \
-t ${PROJECT}:stable \
-t ${PROJECT}:1.24 \
-t ${PROJECT}:1.24.0-bullseye \
-t ${PROJECT}:stable-bullseye \
-t ${PROJECT}:1.24-bullseye \
--no-cache=true \
. \
--push

# 1.24.0-perl, stable-perl, 1.24-perl, 1.24.0-bullseye-perl, stable-bullseye-perl, 1.24-bullseye-perl
NGINX_FROM_IMAGE=nginx:1.24.0-perl
docker buildx build --platform=linux/386,linux/amd64,linux/arm/v5,linux/arm/v7,linux/arm64/v8,linux/mips64le,linux/ppc64le,linux/s390x \
--build-arg NGINX_FROM_IMAGE=${NGINX_FROM_IMAGE} \
--build-arg ENABLED_MODULES="${ENABLED_MODULES}" \
--file Dockerfile \
-t ${PROJECT}:1.24.0-perl \
-t ${PROJECT}:stable-perl \
-t ${PROJECT}:1.24-perl \
-t ${PROJECT}:1.24.0-bullseye-perl \
-t ${PROJECT}:stable-bullseye-perl \
-t ${PROJECT}:1.24-bullseye-perl \
--no-cache=true \
. \
--push

# 1.24.0-alpine, stable-alpine, 1.24-alpine, 1.24.0-alpine3.17, stable-alpine3.17, 1.24-alpine3.17
NGINX_FROM_IMAGE=nginx:1.24.0-alpine
docker buildx build --platform=linux/386,linux/amd64,linux/arm/v5,linux/arm/v7,linux/arm64/v8,linux/mips64le,linux/ppc64le,linux/s390x \
--build-arg NGINX_FROM_IMAGE=${NGINX_FROM_IMAGE} \
--build-arg ENABLED_MODULES="${ENABLED_MODULES}" \
--file Dockerfile.alpine \
-t ${PROJECT}:1.24.0-alpine \
-t ${PROJECT}:stable-alpine \
-t ${PROJECT}:1.24-alpine \
-t ${PROJECT}:1.24.0-alpine3.17 \
-t ${PROJECT}:stable-alpine3.17 \
-t ${PROJECT}:1.24-alpine3.17 \
--no-cache=true \
. \
--push

# 1.24.0-alpine-perl, stable-alpine-perl, 1.24-alpine-perl, 1.24.0-alpine3.17-perl, stable-alpine3.17-perl, 1.24-alpine3.17-perl
NGINX_FROM_IMAGE=nginx:1.24.0-alpine-perl
docker buildx build --platform=linux/386,linux/amd64,linux/arm/v5,linux/arm/v7,linux/arm64/v8,linux/mips64le,linux/ppc64le,linux/s390x \
--build-arg NGINX_FROM_IMAGE=${NGINX_FROM_IMAGE} \
--build-arg ENABLED_MODULES="${ENABLED_MODULES}" \
--file Dockerfile.alpine \
-t ${PROJECT}:1.24.0-alpine-perl \
-t ${PROJECT}:stable-alpine-perl \
-t ${PROJECT}:1.24-alpine-perl \
-t ${PROJECT}:1.24.0-alpine3.17-perl \
-t ${PROJECT}:stable-alpine3.17-perl \
-t ${PROJECT}:1.24-alpine3.17-perl \
--no-cache=true \
. \
--push

# 1.24.0-alpine-slim, stable-alpine-slim, 1.24-alpine-slim, 1.24.0-alpine3.17-slim, stable-alpine3.17-slim, 1.24-alpine3.17-slim
NGINX_FROM_IMAGE=nginx:1.24.0-alpine-slim
docker buildx build --platform=linux/386,linux/amd64,linux/arm/v5,linux/arm/v7,linux/arm64/v8,linux/mips64le,linux/ppc64le,linux/s390x \
--build-arg NGINX_FROM_IMAGE=${NGINX_FROM_IMAGE} \
--build-arg ENABLED_MODULES="${ENABLED_MODULES}" \
--file Dockerfile.alpine \
-t ${PROJECT}:1.24.0-alpine-slim \
-t ${PROJECT}:stable-alpine-slim \
-t ${PROJECT}:1.24-alpine-slim \
-t ${PROJECT}:1.24.0-alpine3.17-slim \
-t ${PROJECT}:stable-alpine3.17-slim \
-t ${PROJECT}:1.24-alpine3.17-slim \
--no-cache=true \
. \
--push