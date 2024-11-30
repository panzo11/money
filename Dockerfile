FROM node:14

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

# Verifique se o arquivo existe antes de tentar removê-lo
RUN if [ -f src/components/TransactionsTable/index.tsx ]; then sed -i '/useContext/d' src/components/TransactionsTable/index.tsx; fi

RUN npm run build

EXPOSE 5173

CMD ["npm", "run", "dev"]
