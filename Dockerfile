FROM node:18
RUN apt-get update -y
RUN apt-get install npm -y
WORKDIR /app
COPY package*.json ./
COPY . .
EXPOSE 3000
CMD ["npm","start"]
CMD ["node","server.js"]