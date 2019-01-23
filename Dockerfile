FROM node:8.11.3

# Create placeholder directory for application source deposit
RUN mkdir -p /usr/src/app

# Bundle app source. 
# Note that anything below this line will not use the Docker image cache
# if the application source has been modified since the last build.
WORKDIR /usr/src/app
COPY index.js /usr/src/app

EXPOSE 3010
CMD [ "node", "index.js" ]