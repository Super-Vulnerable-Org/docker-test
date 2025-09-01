# Deliberately vulnerable base image
FROM node:12.18.3  # EOL, contains dozens of CVEs

WORKDIR /app

# Copy and install outdated dependencies
COPY package.json .
RUN npm install

COPY . .

CMD ["node", "index.js"]
