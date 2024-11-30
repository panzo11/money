FROM node:14

WORKDIR /src

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run dev

EXPOSE 5173

CMD ["npm", "run", "dev"]
