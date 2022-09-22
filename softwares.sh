#!/bin/bash

# Notion Enhancer / Repackaged
echo "deb [trusted=yes] https://apt.fury.io/notion-repackaged/ /" | sudo tee /etc/apt/sources.list.d/notion-repackaged.list
apt update
apt install notion-app-enhanced
