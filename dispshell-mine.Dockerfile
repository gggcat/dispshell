FROM zzzcat/dispshell

ARG USERNAME

RUN mkdir -p /home/${USERNAME} && \
    useradd -g staff -d /home/${USERNAME} -s /bin/bash ${USERNAME}
WORKDIR /${USERNAME}
COPY ./root /home/${USERNAME}
RUN chown ${USERNAME}:staff /home/${USERNAME}/.bashrc
USER ${USERNAME}

CMD ["bash"]