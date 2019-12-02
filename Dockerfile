FROM node:12-slim

ARG APP_PORT

ENV DIR /app

WORKDIR ${DIR}

COPY . ${DIR}

RUN npm install

RUN npm run build
