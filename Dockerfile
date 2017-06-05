FROM        alpine:3.5
LABEL       authors="Marius Mitrofan"

ENV         CONSUL_TEMPLATE_VERSION 0.18.3

ADD         https://releases.hashicorp.com/consul-template/${CONSUL_TEMPLATE_VERSION}/consul-template_${CONSUL_TEMPLATE_VERSION}_linux_amd64.zip consul-template.zip

RUN         apk add --no-cache zip && \

            unzip consul-template.zip && \

            mv -f \
                   consul-template \
                   /sbin/consul-template && \

            rm -rf \
                   consul-template.tar.gz

ENTRYPOINT  ["/sbin/consul-template"]
