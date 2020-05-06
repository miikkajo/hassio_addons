#!/bin/bash
rm -rf gmusicproxy
rm -rf gmusicproxy-dev
rm -rf ha-addon-frigate
git clone https://github.com/miikkajo/gmusicproxy ./gmusicproxy
rm -rf gmusicproxy/.git 
git clone --branch dev https://github.com/miikkajo/gmusicproxy gmusicproxy-dev
rm -rf gmusicproxy-dev/.git 
git clone https://github.com/miikkajo/ha-addon_frigate-history ./frigate-history
rm -rf frigate-history/.git 
