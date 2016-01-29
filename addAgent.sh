#!/bin/bash
set -e

BIND_IP=$1
JOIN_IP=$2
consul agent \
    -bind=${BIND_IP} \
    -client=0.0.0.0 \
    -data-dir="/tmp/consul" \
    -retry-join=${JOIN_IP} \
    -ui
