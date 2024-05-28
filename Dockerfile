FROM node:20-alpine
WORKDIR /app
COPY . .
RUN yarn install --production

#Run the first time set up script and start the app
CMD ["sh", "-c", "node index.js"]
EXPOSE 8080