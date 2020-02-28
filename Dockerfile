FROM node:8.11.2

WORKDIR /app
COPY . /app

RUN yarn install --production

ENV GA_TRACKING_ID=UA-55543240-3
RUN /app/node_modules/.bin/next build src

ENV NODE_ENV production
ENTRYPOINT ["node", "server.js"]
