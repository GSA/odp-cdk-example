FROM node:lts-alpine

ENV SOURCE_DIR=/

COPY . $SOURCE_DIR
WORKDIR $SOURCE_DIR

RUN npm i -g aws-cdk typescript
