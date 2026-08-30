FROM alpine:latest

# Install basic tools
RUN apk add --no-cache bash curl netcat-openbsd vim sudo

# Setup user
RUN adduser -D -s /bin/bash player
USER player
WORKDIR /home/player

# Prepare the entry script
COPY --chown=player:player src/scripts/entry.sh /home/player/entry.sh
RUN chmod +x /home/player/entry.sh

CMD ["/home/player/entry.sh"]
