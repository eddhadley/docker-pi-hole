docker run -d \
#name the container
--name pihole \
#map ports
-p 53:53/tcp -p 53:53/udp \
-p 80:80 \
-p 443:443 \
#set env vars
-e TZ="Europe/London" \
-e WEBPASSWORD="password123" \
-e DNSMASQ_LISTENING="all" \
#attach volues
-v "/etc/pihole/:/etc/pihole/" \
-v "/etc/localtime:/etc/localtime:ro" \
#set dns
--dns=127.0.0.1 --dns=8.8.8.8 \
#set restart policy
--restart=unless-stopped \
#image to use
pihole/pihole:latest
