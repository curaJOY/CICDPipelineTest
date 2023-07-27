FROM node:18

# Create app directory
WORKDIR /curajoy

# Install app dependencies
# A wildcard is used to ensure both package.json AND package-lock.json are copied
# where available (npm@5+)
COPY package*.json ./

RUN npm ci --omit=dev

# Bundle app source
COPY server.js .

EXPOSE 8080
CMD [ "node", "server.js" ]
