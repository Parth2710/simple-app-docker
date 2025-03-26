FROM node:20-alpine
WORKDIR /app
RUN apk add --no-cache git
RUN git clone https://github.com/Parth2710/simple-app.git .
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]