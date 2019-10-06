#!/usr/bin/env bashio
set -e
bashio::log.info "Starting gmusicproxy..."
/GMusicProxy --host 192.168.0.2 -P 9999
