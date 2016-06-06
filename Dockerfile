####
# Dockerized REX-ray based off phusion/baseimage
###
FROM phusion/baseimage

MAINTAINER FRITZ|FRITZ <fritz@fritztech.net>

CMD ["/sbin/my_init"]

RUN curl -sSL https://dl.bintray.com/emccode/rexray/install | sh -

ENTRYPOINT ["rexray"]

CMD ["start"]

# Clean up APT when done.
RUN apt-get clean && rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*
