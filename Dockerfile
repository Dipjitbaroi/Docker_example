
FROM node:16.0.0
WORKDIR /app
COPY package*.json ./
RUN npm i npm@latest -g
RUN npm cache clean --force
RUN rm -rf ~/.npm
RUN npm install --production
COPY . .
# RUN npm run build
EXPOSE 5001
CMD [ "node", "index.js" ]
