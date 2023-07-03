FROM node:15.7.0-stretch-slim

# Install required dependencies
RUN apt-get update -y && apt-get upgrade -y && apt-get install \
  ca-certificates -y

COPY . ./

RUN npm i

EXPOSE 4000
EXPOSE 3000

CMD node .
