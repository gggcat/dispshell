FROM zzzcat/dispshell:python3

#
# Docker
# 
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends docker.io && \
    apt-get install -y --no-install-recommends docker-compose && \
    apt-get install -y --no-install-recommends gnupg2 && \
    apt-get install -y --no-install-recommends pass && \
    echo "*** INSTALLED: docker ***"
