step to run this app using the docker-compose 


linux:
    1 . sudo docker-compose up (to up the container)
    2 . sudo docker-compose down (to stop or down the container)
    
 =======================================================================================
 // Dockerfile (basic image)

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
===========================================================================================

// docker-compose.yml
version: "3.5"
services:
      firstapp:
          build: .
          ports:
              -  "8000:4200"
          command: sh -c " ng serve --host 0.0.0.0"
          volumes:
              - "/app/node_modules"
              - ".:/app"


=========================================================================================================================




 
 
  
 
    
    
    
    
    
    
    
   
    




