FROM node:latest

WORKDIR /usr/src/app

COPY ./package.json /usr/src/app/package.json

RUN npm install

COPY ./ /usr/src/app/

ENV FIGLET_SERVER_DB_URL=""

EXPOSE 3000



CMD node /usr/src/app/index.js
