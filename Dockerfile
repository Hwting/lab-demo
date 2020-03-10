FROM node:carbon
MAINTAINER wang.t <wang.t.nice.gmail.com> 
# Create app directory
WORKDIR /app

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm --registry=https://registry.npm.taobao.org install
# If you are building your code for production
# RUN npm install --only=production

# Bundle app source
COPY src /app

EXPOSE 8080
CMD [ "node", "server.js" ]
