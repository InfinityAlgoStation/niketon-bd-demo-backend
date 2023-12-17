#!/bin/bash
set -e

echo "Deployment started ..."

# Pull the latest version of the app
git pull origin main
echo "New changes copied to server !"

echo "Installing Dependencies..."
yarn install --frozen-lockfile

echo "Building the project..."
yarn run build
pm2 restart cowHut

echo "Deployment Finished!"