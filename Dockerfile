# Deliberately vulnerable base image (EOL, contains CVEs)
FROM node:12.18.3

WORKDIR /app

# Copy and install outdated dependencies
COPY package.json .
RUN npm install

COPY . .

CMD ["node", "index.js"]
