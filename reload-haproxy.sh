#!/bin/bash
sudo nl-qdisc-add --dev=lo --parent=1:4 --id=40: --update plug --buffer &> /dev/null
/usr/local/sbin/haproxy -f /etc/haproxy.cfg -p /var/run/haproxy.pid -sf $(cat /var/run/haproxy.pid)
sudo nl-qdisc-add --dev=lo --parent=1:4 --id=40: --update plug--release-indefinite &> /dev/null
sleep 0.100
