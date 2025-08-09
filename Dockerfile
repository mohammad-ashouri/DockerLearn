ARG NODE_VERSION=20
FROM node:${NODE_VERSION}

WORKDIR /app
COPY package*.json .
RUN npm install
COPY . .
EXPOSE 4000
CMD ["node", "server.js"]