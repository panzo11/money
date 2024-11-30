FROM node:14

WORKDIR /src

COPY package*.json ./

RUN npm install

COPY . .

# Adicione este comando para remover a importação não utilizada
RUN sed -i '/useContext/d' src/components/TransactionsTable/index.tsx

RUN npm run dev

EXPOSE 5173

CMD ["npm", "start", "dev"]
