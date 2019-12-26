#!/usr/bin/env bashio
set -e
cp /gui_template.html /data/gui_template.html
bashio::log.info "Starting gmusicproxy..."
ingress_enabled=$(bashio::addon.ingress)
if [[ $ingress_enabled == "true" ]]; then
    /GMusicProxy --host "$(bashio::addon.ingress_entry)" -P $(bashio::config 'port')
else
    /GMusicProxy --host $(bashio::config 'url') -P $(bashio::config 'port')
fi