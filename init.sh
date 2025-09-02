docker run --rm \
  -v $(pwd)/letsencrypt:/etc/letsencrypt \
  -v $(pwd)/cloudflare.ini:/cloudflare.ini \
  certbot/dns-cloudflare certonly \
  --dns-cloudflare \
  --dns-cloudflare-credentials /cloudflare.ini \
  -d app1.example.com \
  -d app2.example.com \
  --email your@email.com \
  --agree-tos \
  --non-interactive
