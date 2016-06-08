FROM alpine:latest

RUN apk add --no-cache weechat py-pip && \
    pip install websocket-client

ENV LANG C.UTF-8
ENV HOME /home/user

RUN adduser -D user \
    && mkdir -p $HOME/.weechat \
    && chown -R user:user $HOME

WORKDIR $HOME
USER user

ENTRYPOINT ["weechat"]
