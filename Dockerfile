FROM node:lts-alpine

ENV SOURCE_DIR=/src
ENV GROUPNAME=jenkins
ENV USERNAME=jenkinsuser

COPY . $SOURCE_DIR
WORKDIR $SOURCE_DIR

RUN addgroup -S $GROUPNAME && adduser -S $USERNAME -G $GROUPNAME \
    && chown -R $USERNAME:$GROUPNAME /usr/local/* \
    && chown -R $USERNAME:$GROUPNAME $SOURCE_DIR

USER $USERNAME

RUN npm config set prefix $SOURCE_DIR/.npm-global \
    && export PATH=$SOURCE_DIR/.npm-global:$PATH \
    && npm i -g aws-cdk typescript \
    && npm i
