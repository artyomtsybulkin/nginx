# nginx
Nginx configs, settings, notes etc.

## Streams

```bash
# Use outside http section in nginx config to proxyfy TCP
# Module installation: dnf install nginx-mod-stream policycoreutils-python-utils
# Check location
# include /usr/share/nginx/modules/*.conf;

stream {
    server {
        listen 1514;
        proxy_pass 192.168.40.89:1514;
    }
    server {
        listen 1515;
        proxy_pass 192.168.40.89:1515;
    }
}
```

It's better to use single subnet and connect to it everything.