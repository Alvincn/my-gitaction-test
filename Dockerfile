# Dockerfile
FROM node:18.20.5

WORKDIR /app

COPY . .

RUN yarn install
RUN yarn build

EXPOSE 3000

CMD ["yarn", "start"]
