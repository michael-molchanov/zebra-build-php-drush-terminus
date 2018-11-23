FROM michaeltigr/zebra-build-php-drush:latest

LABEL maintainer "Michael Molchanov <mmolchanov@adyax.com>"

USER root

RUN mkdir -p /opt/terminus \
  && cd /opt/terminus \
  && curl -O https://raw.githubusercontent.com/pantheon-systems/terminus-installer/master/builds/installer.phar \
  && php installer.phar install --install-dir=/opt/terminus
