#!/bin/bash
set -e
cd /opt/poisv
git fetch origin main
git reset --hard origin/main
/opt/poisv/venv/bin/pip install -q -r requirements.txt
systemctl restart poisv-api
echo "Deploy OK $(date -u)"