FROM node:20-alpine

COPY package*.json ./

RUN npm install

ENTRYPOINT [ "/bin/sh" ]