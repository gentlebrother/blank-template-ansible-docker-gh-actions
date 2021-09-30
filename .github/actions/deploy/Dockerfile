FROM alpine
RUN apk add --update ansible sshpass openssh python3
ENV ANSIBLE_HOST_KEY_CHECKING=False
ENV REMOTE_TMP=/tmp/.ansible-${USER}/tmp
COPY entrypoint.sh /entrypoint.sh
RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
