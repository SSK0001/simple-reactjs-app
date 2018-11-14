# base image
FROM node:6

# set working directory
RUN mkdir -p /app
COPY . /app
WORKDIR /app


# install and cache app dependencies
RUN npm install --production 

# start app
CMD ["npm", "start"]
