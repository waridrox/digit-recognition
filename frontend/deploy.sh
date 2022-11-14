#!/usr/bin/env sh

# abort on errors
set -e

# build the Rust WASM package first (required for the frontend build)
echo "Building Rust WASM package..."
cd ../rust-neural-network
wasm-pack build
cd ../frontend

# build the frontend (use yarn since npm doesn't support link: protocol)
echo "Building frontend..."
yarn build

# navigate into the build output directory
cd dist

git init
git add -A
git commit -m 'deploy'

git push -f https://github.com/waridrox/digit-recognition.git main:gh-pages

cd -