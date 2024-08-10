ARG rclone_version

FROM rclone/rclone:${rclone_version}

ARG github_username
ARG github_repository

LABEL org.opencontainers.image.source=https://github.com/${github_username}/${github_repository}

COPY start.sh /start.sh
RUN chmod +x /start.sh

ENV CRON_SCHEDULE="* * * * *"
ENV COMMAND="rclone version"

ENTRYPOINT ["/start.sh"]
