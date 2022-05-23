# choose base image to build off of
FROM node:14.18.3-alpine

WORKDIR /app

COPY package.json  ./

RUN npm install -g npm@latest-7; \
  npm install -g @angular/cli@v11-lts; \
  npm install;

COPY . .
EXPOSE 4200

# Invoke app server.
CMD npm run ng serve -- --open --host 0.0.0.0 --port 4200 --poll 500
