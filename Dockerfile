FROM node:12

WORKDIR /app

COPY package*.json ./

RUN npm install

COPY . .

RUN npm run build

EXPOSE 3000
EXPOSE 4000

CMD sh -c "HOST=0.0.0.0 npm start & HOST=0.0.0.0 npm run dev:server"