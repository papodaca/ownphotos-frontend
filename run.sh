#!/usr/bin/env bash
sed -i "s@http://192.168.1.100@//${VIRTUAL_HOST}@g" src/api_client/apiClient.js
sed -i "s@http://192.168.1.100:8000/@http://backend/@g" package.json
DANGEROUSLY_DISABLE_HOST_CHECK=true HOST=0.0.0.0 npm start

