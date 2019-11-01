#!/usr/bin/env bashio
set -e
bashio::log.info "Starting gmusicproxy..."
info
#!/usr/bin/bashio
ingress_enabled=$(bashio::addon.ingress)
if [[ $ingress_enabled == "true" ]]; then
    /GMusicProxy -a --host "$(bashio::addon.ingress_entry)" -P $(bashio::config 'port')
else
    /GMusicProxy -a --host $(bashio::config 'url') -P $(bashio::config 'port')
fi




