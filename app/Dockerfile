FROM ubuntu:22.04

# Set the environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Install the required packages
RUN apt-get update && apt-get clean
RUN apt-get install -y \ 
    asterisk \ 
    net-tools \
    sngrep \
    supervisor \
    && apt-get clean

# Copy the configuration files
COPY app/supervisord.conf /etc/supervisor/conf.d/supervisord.conf
CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]