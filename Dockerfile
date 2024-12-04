FROM node:18.17.1
WORKDIR /app
ENV PORT 8000
ENV MODEL_URL 'https://storage.googleapis.com/model-bucket-in-prod/model-in-prod/model.json'
COPY . .
RUN npm install
EXPOSE 3000
CMD [ "npm", "run", "start"]
