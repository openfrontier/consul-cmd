#!/bin/bash
set -e

BIND_IP=$1
consul agent \
    -bind=${BIND_IP} \
    -bootstrap-expect=3 \
    -client=0.0.0.0 \
    -data-dir="/tmp/consul" \
    -server \
    -ui
