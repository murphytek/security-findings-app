#!/bin/sh
cat > /usr/share/nginx/html/config.js << EOF
window.__APP_CONFIG__ = {
  DB_TOKEN: "${DB_TOKEN}",
  DB_ENDPOINT: "${DB_ENDPOINT}",
  APP_ID: "${APP_ID}",
  TENANT_ID: "${TENANT_ID}"
};
EOF
exec nginx -g 'daemon off;'
