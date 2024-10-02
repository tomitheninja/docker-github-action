FROM node:20-alpine

RUN apk add --no-cache bash

COPY package*.json ./

RUN npm install

ENTRYPOINT "/bin/bash"