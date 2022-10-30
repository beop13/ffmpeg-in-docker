FROM debian:stable-20221024-slim

RUN apt-get -y update \
	&& apt-get -y upgrade \
	&& apt-get install -y ffmpeg

WORKDIR app
COPY ./scripts ./scripts