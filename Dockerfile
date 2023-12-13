# Create docker file for the application

FROM node:20-alpine

RUN mkdir -p /app2
WORKDIR /app2

COPY package*.json ./
RUN npm install

COPY . .

EXPOSE 3000

CMD ["npm", "start"]
