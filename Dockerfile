FROM node:10
ADD /src /app/
WORKDIR /app/
COPY /src/package.json ./app/
RUN npm install
COPY /src/* /app/
EXPOSE 1337
CMD ["npm", "start"]