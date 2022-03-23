FROM alpine 

RUN apk add krb5 
WORKDIR /home

ENTRYPOINT [ "/usr/bin/kadmin" ]
