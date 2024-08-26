FROM debian:latest

WORKDIR /app

RUN apt-get update && \
    apt-get upgrade -y

RUN apt-get install -y \
    iproute2 sudo curl vim kmod procps lsof

COPY init.sh .
RUN chmod +x init.sh

ENTRYPOINT ["./init.sh"]
