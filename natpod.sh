#!/bin/bash

ip fou add port 5555 ipproto 4

# &netlink.Iptun{
# 		LinkAttrs:  attrs,
# 		Ttl:        64,
# 		EncapType:  netlink.FOU_ENCAP_DIRECT,
# 		EncapDport: uint16(t.port),
# 		EncapSport: 0, // sportauto is always on
# 		Remote:     convNetIP(addr),
# 		Local:      convNetIP(*t.local4),
# 	}

ip link add name fou4_test1 type ipip \
    remote 192.0.2.2 \
    local 192.0.2.1 \
    mode ipip \
    ttl 255 \
    dev eth1 \
    encap fou \
    encap-sport 0 \
    encap-dport 5555
