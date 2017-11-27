# Debian systemd
A Debian Docker container with systemd and SSH daemon.

By default this container enables SSH, Cron and At daemons. SSH logins are allowed only with SSH key.

To set up the SSH key, set the `SSH_KEY` environment variable to contain the desired public key when starting the container.

Based on https://hub.docker.com/r/dramaturg/debian-systemd/
Using https://github.com/gdraheim/docker-systemctl-replacement
