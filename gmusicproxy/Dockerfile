ARG BUILD_FROM
FROM $BUILD_FROM

ENV LANG C.UTF-8

RUN apk add --no-cache  python3 py3-pip python3-dev build-base py3-lxml py3-future
RUN pip3 install --no-cache-dir gmusicapi eyed3 jinja2
COPY GMusicProxy /GMusicProxy
COPY run.sh /
RUN chmod a+x /run.sh
CMD ["/run.sh"]