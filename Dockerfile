FROM node:14

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

# Adicione este comando para remover a importação não utilizada
RUN sed -i '/useContext/d' src/components/TransactionsTable/index.tsx

RUN npm run build

EXPOSE 3000

CMD ["npm", "start"]
