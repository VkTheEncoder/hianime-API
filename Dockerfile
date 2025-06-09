FROM node:18-alpine

# set workdir
WORKDIR /app

# copy package files & install deps
COPY package.json package-lock.json* ./
RUN npm ci --only=production

# copy source
COPY . .

# bind to the port Koyeb assigns
ENV PORT 3000
EXPOSE 3000

CMD ["npm", "start"]
