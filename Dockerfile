FROM node:current-alpine3.18
ARG appDirectory=/opt/koa-typescript-api
WORKDIR  ${appDirectory}
 
RUN apk update && apk upgrade

COPY package.json .

RUN npm install

COPY . .

CMD ["npm", "start"]