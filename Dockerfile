FROM node:16.19.0-alpine3.17

RUN addgroup app && adduser -S -G app app

USER app

WORKDIR /app

COPY package*.json .

RUN ["npm", "install"]

COPY . .

EXPOSE 3000

CMD ["npm", "start"]