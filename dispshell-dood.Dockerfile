FROM zzzcat/dispshell:python3

#
# Docker
# 
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends docker.io && \
    apt-get install -y --no-install-recommends docker-compose && \
    echo "*** INSTALLED: docker ***"
