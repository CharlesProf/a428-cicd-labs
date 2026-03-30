#!/bin/bash

echo "Jalankan React app (production mode)"

npm run build

npm start &
echo $! > .pidfile