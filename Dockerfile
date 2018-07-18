# FROM alpine:3.8
FROM alpine@sha256:7043076348bf5040220df6ad703798fd8593a0918d06d3ce30c6c93be117e430

RUN apk add curl wget jq

COPY start.sh /start.sh
RUN chmod 755 /start.sh

WORKDIR ~
VOLUME [ "/export" ]
ENTRYPOINT [ "sh", "/start.sh" ]
