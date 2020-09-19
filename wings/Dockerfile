FROM alpine:latest

# Build args
ARG wings_ver
ENV WINGS_VER ${wings_ver}

# Dirs
WORKDIR /var/lib/pterodactyl
RUN mkdir -p /etc/pterodactyl

# Dependencies
RUN apk add curl

# Download
RUN curl -L -o /usr/local/bin/wings https://github.com/pterodactyl/wings/releases/download/${WINGS_VER}/wings_linux_amd64 \
	&& chmod +x /usr/local/bin/wings

# Expose ports
EXPOSE 8080
EXPOSE 2022

# Command
CMD [ "/usr/local/bin/wings", "--config", "/etc/pterodactyl/config.yml" ]
