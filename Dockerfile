FROM node:14.8.0-alpine

WORKDIR /app

COPY package*.json ./
RUN npm ci

COPY main.js ./

CMD [ "node", "main.js" ]
