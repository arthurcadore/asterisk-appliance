FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive

RUN apt-get update && apt-get clean
RUN apt-get install -y asterisk net-tools sngrep supervisor 

## Add startup script to container:
#COPY app/startup.sh /usr/sbin/startup.sh
#RUN chmod +x /usr/sbin/startup.sh
#
## Starts and Mantain container running:
#CMD ["/usr/sbin/startup.sh"]

COPY app/supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]