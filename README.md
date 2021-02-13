# docker-sniproxy
Very simple dockerized sniproxy

## Usage
```
docker run  -d --name sniproxy \
            -p 80:80 -p 443:443 \
            -e NAMESERVER="8.8.8.8" \
            yangliu/sniproxy
```