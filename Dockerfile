FROM node:22-alpine
WORKDIR /app
COPY package.json ./
RUN git clone https://github.com/Parth2710/simple-app.git .
RUN npm install
COPY . .
EXPOSE 3000
CMD ["npm", "start"]