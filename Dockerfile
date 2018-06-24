FROM backstopjs/backstopjs:latest

LABEL maintainer="Toro_Unit <mail@torounit.com>"

RUN echo deb http://ftp.debian.org/debian jessie-backports main > /etc/apt/sources.list.d/jessie-backports.list

RUN apt-get update
RUN apt-get install -y fonts-noto fonts-noto-cjk
RUN fc-cache -fv

RUN google-chrome --headless --disable-gpu --no-sandbox


WORKDIR /src

ENTRYPOINT ["backstop"]