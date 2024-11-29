FROM node:latest

WORKDIR /src

COPY . .

#RUN npm install

RUN npm install --quiet --no-optional --no-fund --loglevel=error && \
    npm run build

EXPOSE 3000

CMD [ "npm","run","dev"]


#COPY . .
#RUN npm run build
#EXPOSE 3000
#CMD ["npm", "start"]