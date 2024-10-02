FROM alpine:3.20

RUN apk add --no-cache bash nodejs npm

COPY package*.json ./

RUN npm install

# COPY entrypoint.sh /entrypoint.sh

# ENTRYPOINT ["/entrypoint.sh"]