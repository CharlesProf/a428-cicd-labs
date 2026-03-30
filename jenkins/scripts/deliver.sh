#!/bin/bash

echo "Stop container lama kalau ada"
docker rm -f react-app || true

echo "Jalankan React app (production mode)"

docker run -d \
  -p 3000:3000 \
  --name react-app \
  -v $(pwd):/app \
  -w /app \
  node:16-buster-slim \
  sh -c "npm install && npm run build && npx serve -s build -l 3000"