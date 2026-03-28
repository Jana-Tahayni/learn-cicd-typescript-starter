FROM --platform=linux/amd64 node:22-slim

WORKDIR /usr/src/app

ADD . .

RUN npm install --package-lock-only && npm ci

RUN npm run build

CMD ["node", "dist/main.js"]
