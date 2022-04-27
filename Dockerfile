FROM node:14-slim

WORKDIR /usr/src/app

COPY . .

RUN apt-get update && apt-get install curl -y && \
npm install --loglevel verbose && \
chmod -R 777 /usr/src/app

##Supposedly our Node Js server serves a /status route

HEALTHCHECK --interval=1m --timeout=30s --retries=3 CMD curl --fail http://localhost:8000/status || exit 1

CMD ["npm", "start"]

EXPOSE 8000
