FROM node:20-alpine

RUN apk add --no-cache bash

COPY package*.json ./

RUN npm install

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]