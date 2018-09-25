FROM node:9.2.0-slim

WORKDIR /app
COPY package.json /app
RUN npm install && npm cache verify
COPY ./app /app

ENV CACHE_HOST "10.0.0.4"

CMD ["node", "app.js"]
