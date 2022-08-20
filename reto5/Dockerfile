FROM node:lts-alpine3.16

RUN mkdir -p /app

WORKDIR /app

COPY hello-bootcamp/package*.json ./

RUN npm install 

COPY hello-bootcamp/. .

EXPOSE 4000

CMD ["node", "server.js"]