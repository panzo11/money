FROM node:20

WORKDIR /src

COPY . .

RUN npm install

RUN npm run build
EXPOSE 3000

CMD ["npm", "run", "dev"]
