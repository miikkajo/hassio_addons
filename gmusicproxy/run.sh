#!/usr/bin/env bashio
set -e
bashio::log.info "Starting gmusicproxy..."
/GMusicProxy --host $(bashio::config 'url') -P $(bashio::config 'port') $(bashio::config 'extra_parameters')
