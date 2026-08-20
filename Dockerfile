# Use a lightweight Node.js image
FROM node:14-alpine

WORKDIR /usr/src/app

COPY package*.json ./
RUN npm install

COPY . .

# Expose port on 8080
EXPOSE 8080

CMD ["node", "server.js"]