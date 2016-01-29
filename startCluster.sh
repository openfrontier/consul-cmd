#!/bin/bash
set -e

BIND_IP=$1
consul agent \
    -bind=${BIND_IP} \
    -bootstrap-expect=3 \
    -data-dir="/tmp/consul" \
    -server \
    -ui
