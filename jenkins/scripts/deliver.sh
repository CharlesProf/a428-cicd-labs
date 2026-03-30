#!/bin/bash

echo "Stop container lama kalau ada"
docker rm -f react-app || true

echo "Jalankan React app di Docker"

docker run -d \
  -p 3000:3000 \
  --name react-app \
  -e HOST=0.0.0.0 \
  -v $(pwd):/app \
  -w /app \
  node:16-buster-slim \
  sh -c "npm install && npm start"