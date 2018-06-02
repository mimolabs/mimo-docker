FROM jwilder/docker-gen

COPY ./nginx.tmpl /etc/docker-gen/templates/nginx.tmpl

# ENTRYPOINT ["-notify-sighup nginx -watch -wait 5s:30s /etc/docker-gen/templates/nginx.tmpl /etc/nginx/conf.d/"]
# ENTRYPOINT ["/usr/local/bin/docker-gen", "-notify-sighup", "nginx", "-watch", "-only-exposed", "-wait", "5s:30s", "/etc/docker-gen/templates/nginx.tmpl", "/etc/nginx/conf.d/default.conf"]
