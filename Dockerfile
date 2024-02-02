FROM ubuntu:20.04

RUN mkdir -p /home/app

COPY . /home/app

RUN apt update && \
    apt install fortune-mod cowsay netcat -y

EXPOSE 4499

WORKDIR /home/app
ENV  PATH="/usr/games:$PATH"
CMD ["./wisecow.sh"]
