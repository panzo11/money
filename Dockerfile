FROM node:14

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

# Adicione este comando para remover importações não utilizadas
RUN npx ts-prune

RUN npm run build

EXPOSE 3000

CMD ["npm", "start", "vite"]
