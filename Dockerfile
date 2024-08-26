FROM debian:latest

RUN apt-get update && \
    apt-get upgrade -y

RUN apt-get install -y \
    iproute2 sudo curl vim kmod

RUN modprobe fou

RUN sysctl -w net.ipv4.conf.default.rp_filter=0
RUN sysctl -w net.ipv4.conf.all.rp_filter=0
RUN sysctl -w net.ipv4.ip_forward=1
RUN sysctl -w net.ipv6.conf.all.forwarding=1

CMD ["sleep", "infinity"]
