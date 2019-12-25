#!/usr/bin/env bashio
set -e
cp /gui_template.html /data/gui_template.html
bashio::log.info "Starting gmusicproxy..."
ingress_enabled=$(bashio::addon.ingress)
if [[ $ingress_enabled == "true" ]]; then
    /GMusicProxy -a --host "$(bashio::addon.ingress_entry)" -P $(bashio::config 'port')
else
    /GMusicProxy -a --host $(bashio::config 'url') -P $(bashio::config 'port')
fi




