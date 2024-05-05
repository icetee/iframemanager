ARG NODE_VERSION=20
ARG ALPINE_VERSION=3.19

FROM node:${NODE_VERSION}-alpine${ALPINE_VERSION} AS node-base

FROM node-base AS node-dev

RUN mkdir -p /node/app

WORKDIR /node/app

RUN npm install -g \
    npm@^10

CMD ["sh", "-c", "while true; do sleep 30; done;"]
