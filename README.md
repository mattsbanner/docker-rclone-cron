# Docker Rclone cron

Rclone Docker image with cron schedule support

Schedule and Rclone command can be passed as environment variables to a container.
- `CRON_SCHEDULE=0 1 * * *`
- `COMMAND=rclone move b2:foo /bar`