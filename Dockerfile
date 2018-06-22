FROM backstopjs/backstopjs:latest

LABEL maintainer="Toro_Unit <mail@torounit.com>"

#RUN apt-get update

RUN apt-get install -y fonts-noto

WORKDIR /src

ENTRYPOINT ["backstop"]