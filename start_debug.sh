#!/bin/bash

# Авто-очистка портов
sudo fuser -k 9222/tcp
sudo fuser -k 3122/tcp
sudo fuser -k 2048/tcp

# Запуск debug с сессией (браузер откроется)
STREAM_PORT=3122 UNIFIED_PROXY_CONFIG= poetry run python launch_camoufox.py  # --active-auth-json auth_profiles/saved/myauth.json-auth-json auth_profiles/saved/myauth.json
