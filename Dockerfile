FROM node:20-alpine
WORKDIR /app
RUN git clone https://github.com/Parth2710/simple-app.git .
RUN npm install
COPY package.json ./
COPY . .
EXPOSE 3000
CMD ["npm", "start"]