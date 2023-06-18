FROM node:15.7.0-stretch-slim

COPY . ./

RUN npm i

EXPOSE 4000
EXPOSE 3000

CMD node .
