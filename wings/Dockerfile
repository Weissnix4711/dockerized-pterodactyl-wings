FROM alpine:latest

ARG wings_ver
ENV WINGS_VER ${wings_ver}}

WORKDIR /var/lib/pterodactyl
RUN mkdir -p /etc/pterodactyl

RUN curl -L -o /usr/local/bin/wings https://github.com/pterodactyl/wings/releases/download/${WINGS_VER}/wings_linux_amd64

EXPOSE 8080
EXPOSE 2022

CMD [ "/usr/local/bin/wings", "--config", "/etc/pterodactyl/config.yml" ]