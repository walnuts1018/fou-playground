#!/bin/bash

modprobe fou

echo 0 >/proc/sys/net/ipv4/conf/default/rp_filter
echo 0 >/proc/sys/net/ipv4/conf/all/rp_filter
echo 1 >/proc/sys/net/ipv4/ip_forward
echo 1 >/net/ipv6/conf/all/forwarding

sleep infinity
