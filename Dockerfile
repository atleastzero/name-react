# FROM directive instructing base image to build upon
FROM node:13.12.0-alpine

# WORKDIR defines /app as the image's working directory
WORKDIR /app

# ENV sets an evironment variable: PATH
ENV PATH /app/node_modules/.bin:$PATH

# COPY package.json before rest of repo
COPY package.json ./
# package.json must be copied before invalidating the
# cache by copying the whole repo to ensure this step only 
# runs when package.json is CHANGED

# RUN a command installing dependencies
RUN npm install

# COPY the rest of the app
COPY . ./

CMD ["npm", "start"]