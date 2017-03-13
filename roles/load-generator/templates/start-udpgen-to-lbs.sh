#!/bin/sh
{% for host in groups['tag_MinionLabInstanceType_loadbalancer'] %}
udpgen -d -h {{ hostvars[host]['ec2_private_ip_address'] }} -p 1514 -z 100 -r 10000
{% endfor %}
