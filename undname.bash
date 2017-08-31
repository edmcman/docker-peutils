#!/bin/bash

set -ex

docker run --rm eschwartz/docker-peutils wine /root/undname.exe "$1" || true
