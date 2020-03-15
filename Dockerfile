FROM node:12.16.1-alpine

RUN mkdir -p /srv/auth/ui && chown -R node:node /srv/auth/

WORKDIR /srv/auth/ui
COPY package*.json ./
USER root

RUN npm i

COPY . .

RUN npm run build