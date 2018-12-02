#!/bin/bash
set -e

testAlias+=(
	[jrcs/letsencrypt-nginx-proxy-companion]='le-companion'
)

imageTests+=(
	[le-companion]='
	docker_api
	default_cert
	certs_single
	certs_san
	certs_standalone
	force_renew
	permissions_default
	permissions_custom
	symlinks
	'
)
