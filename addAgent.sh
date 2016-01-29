#!/bin/bash
set -e

BIND_IP=$1
JOIN_IP=$2
consul agent \
    -bind=${BIND_IP} \
    -client=${BIND_IP} \
    -data-dir="/tmp/consul" \
    -retry-join=${JOIN_IP} \
    -ui
