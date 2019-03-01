FROM node:lts-alpine

# timezone設定
RUN apk --update add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*

# 必要パッケージをインストール
RUN apk add vim

EXPOSE 8080

COPY run.sh /tmp/

CMD ["sh", "/tmp/run.sh"]

