FROM node:alpine

RUN apk add --update git openssh gawk && \
  rm -rf /tmp/* /var/cache/apk/*

#make sure we get fresh keys
RUN rm -rf /etc/ssh/ssh_host_rsa_key /etc/ssh/ssh_host_dsa_key

CMD [ "/bin/ash" ]
