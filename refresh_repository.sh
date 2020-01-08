#!/bin/bash
rm -rf gmusicproxy
rm -rf gmusicproxy-dev
git clone https://github.com/miikkajo/gmusicproxy ./gmusicproxy
rm -rf gmusicproxy/.git 
git clone --branch dev https://github.com/miikkajo/gmusicproxy gmusicproxy-dev
rm -rf gmusicproxy-dev/.git 
