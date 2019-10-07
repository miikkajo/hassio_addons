#!/usr/bin/env bashio
set -e
bashio::log.info "Starting gmusicproxy..."
PORT=bashio::config 'PORT'
HOST=bashio::config 'HOST'

/GMusicProxy --host $(echo $HOST) -P $(echo $PORT)
