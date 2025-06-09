FROM node:18-alpine

WORKDIR /app

COPY package.json ./
# Use `npm install` instead of `npm ci`
RUN npm install --production

COPY . .

ENV PORT 3000
EXPOSE 3000

CMD ["npm", "start"]
