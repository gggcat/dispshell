FROM node:12-slim
WORKDIR /root

ENV LC_ALL=C.UTF-8 \
    LANG=C.UTF-8 \
    TZ=Asia/Tokyo \
    DEBIAN_FRONTEND=noninteractive \
    DEBCONF_NOWARNINGS=yes

#
# Development Tools
# 
RUN apt-get update -y && \
    apt-get install -y --no-install-recommends apt-utils && \
    apt-get install -y --no-install-recommends procps && \
    apt-get install -y --no-install-recommends net-tools && \
    apt-get install -y --no-install-recommends lsof && \
    apt-get install -y --no-install-recommends vim && \
    apt-get install -y --no-install-recommends lv && \
    apt-get install -y --no-install-recommends git && \
    apt-get install -y --no-install-recommends make && \
    apt-get install -y --no-install-recommends jq && \
    apt-get install -y --no-install-recommends unzip && \
    apt-get install -y --no-install-recommends bzip2 && \
    apt-get install -y --no-install-recommends watch && \
    apt-get install -y --no-install-recommends wget && \
    apt-get install -y --no-install-recommends curl && \
    apt-get install -y --no-install-recommends ssh && \
    apt-get install -y --no-install-recommends ftp && \
    apt-get install -y --no-install-recommends screen && \
    apt-get install -y --no-install-recommends exiftool && \
    apt-get install -y --no-install-recommends binutils && \
    echo "*** INSTALLED: shell tools ***"

#
# root Configuration
#
COPY ./root /root

# bash
CMD ["bash"]
