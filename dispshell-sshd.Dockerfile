FROM zzzcat/dispshell

#
# Make login user
#
ARG USERNAME

RUN mkdir -p /home/${USERNAME} && \
    useradd -g staff -d /home/${USERNAME} -s /bin/bash ${USERNAME}
WORKDIR /home/${USERNAME}
COPY ./root /home/${USERNAME}
RUN chown ${USERNAME}:staff /home/${USERNAME}/.bashrc

#
#  Configure sshd
#
RUN mkdir -p /home/${USERNAME}/.ssh/
COPY .ssh/id_rsa_user.pub /home/${USERNAME}/.ssh/authorized_keys
COPY .ssh/id_rsa_user /home/${USERNAME}/.ssh/id_rsa
RUN mkdir -p /run/sshd && \
    chown -R ${USERNAME}:staff /home/${USERNAME}/.ssh/ && \
    chmod -R 0700 /home/${USERNAME}/.ssh/ && \
    chmod -R 0600 /home/${USERNAME}/.ssh/* && \
    echo "*** CONFIGURED: sshd ***"
EXPOSE 22
CMD ["/usr/sbin/sshd", "-D"]
