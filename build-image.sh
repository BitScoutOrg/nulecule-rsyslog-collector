#!/bin/sh

set -ex
prefix=${PREFIX:-${1:-viaq/}}
version=${VERSION:-${2:-latest}}
docker build -t "${prefix}nulecule-rsyslog-collector:${version}" .

if [ -n "${PUSH:-$3}" ]; then
	docker push "${prefix}nulecule-rsyslog-collector:${version}"
fi
