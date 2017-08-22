FROM perl

RUN apt-get update \
    && apt-get install -y nginx xmltv

ADD https://bin.equinox.io/c/ekMN3bCZFUn/forego-stable-linux-amd64.deb /tmp/forego-stable-linux-amd64.deb
RUN dpkg -i /tmp/forego-stable-linux-amd64.deb && rm -fr /tmp/forego-stable-linux-amd64.deb

COPY Procfile /root/
COPY tv_grab_il.conf /root/.xmltv/

CMD ["forego", "start"]
