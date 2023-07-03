FROM node:15.7.0-stretch-slim

RUN apt-get update -y && apt-get install -y libnss3 libgconf-2-4 wget git


COPY . ./

RUN npm i

EXPOSE 4000
EXPOSE 3000

CMD node .
