#!/usr/bin/env bashio
set -e

# Use Hass.io mqtt services ##TODO why does not services work ?
#MQTT_HOST=$(bashio::services "mqtt" "host")
#MQTT_PORT=$(bashio::services "mqtt" "port")
#MQTT_USER=$(bashio::services "mqtt" "username")
#MQTT_PASSWORD=$(bashio::services "mqtt" "password")
MQTT_HOST=$(bashio::config "mqtt_host")
MQTT_PORT=$(bashio::config "mqtt_port")
MQTT_USER=$(bashio::config "mqtt_username")
MQTT_PASSWORD=$(bashio::config "mqtt_password")

MQTT_TOPIC_PREFIX=$(bashio::config "mqtt_topic_prefix")
HISTORY_SIZE=$(bashio::config "history_size")

export MQTT_HOST
export MQTT_PORT
export MQTT_USER
export MQTT_PASSWORD
export MQTT_TOPIC_PREFIX
export HISTORY_SIZE

bashio::log.info "Starting mqtt listener..."
python3 -u /mqttlistener.py