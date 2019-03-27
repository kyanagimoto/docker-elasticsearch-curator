FROM python:alpine

RUN pip install -U --quiet elasticsearch-curator==5.6.0

RUN apk --update add tzdata && \
    cp /usr/share/zoneinfo/Asia/Tokyo /etc/localtime && \
    apk del tzdata && \
    rm -rf /var/cache/apk/*

ENTRYPOINT [ "/usr/local/bin/curator" ]
