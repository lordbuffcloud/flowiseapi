# ⬡ CK42X · ck42x.com
# dockerfile: builds a flowise runtime image on alpine with build deps and a delayed start
# gold on black. sting once.

FROM node:18-alpine

USER root

RUN apk add --no-cache git
RUN apk add --no-cache python3 py3-pip make g++

RUN npm install -g flowise

WORKDIR /data

ENV PORT=80

EXPOSE ${PORT}

CMD /bin/sh -c "sleep 3; flowise start"
