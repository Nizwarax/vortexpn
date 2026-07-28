FROM node:alpine3.22

WORKDIR /tmp

# 📝 DIUBAH DI SINI: Menyalin seluruh file dan folder dari direktori lokal ke dalam Docker
COPY . .

EXPOSE 3000/tcp

RUN apk update && apk upgrade &&\
    apk add --no-cache openssl curl gcompat iproute2 coreutils &&\
    apk add --no-cache bash &&\
    chmod +x index.js &&\
    npm install

CMD ["node", "index.js"]
