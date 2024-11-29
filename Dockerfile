FROM node:alpine

WORKDIR /app

COPY . .

RUN npm install

#RUN npm install --quiet --no-optional --no-fund --loglevel=error && \
   # npm run build
RUN npm run build
EXPOSE 3000

CMD [ "npm","run","dev"]


#COPY . .

#EXPOSE 3000
#CMD ["npm", "start"]