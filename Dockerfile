FROM node:10

WORKDIR /dev/app

COPY /src/package*.json ./

RUN npm install

COPY src/* .

EXPOSE 1337

CMD ["npm", "start"]