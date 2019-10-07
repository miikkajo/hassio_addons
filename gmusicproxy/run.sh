#!/usr/bin/env bashio
set -e
bashio::log.info "Starting gmusicproxy..."
/GMusicProxy -a --host $(bashio::config 'url') -P $(bashio::config 'port')
