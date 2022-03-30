FROM node:12

#Copy the app
COPY ./ /app

#Change the work directory to /app
WORKDIR /app

#Install dependencies
RUN yarn install

#Build site
RUN yarn build 

#Set entrypoint
ENTRYPOINT yarn start

