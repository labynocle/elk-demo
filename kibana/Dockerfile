FROM kibana:7.5.0

USER root

RUN yum update -y && yum install -y nmap

COPY entrypoint.sh /tmp/entrypoint.sh
RUN chmod +x /tmp/entrypoint.sh

USER kibana

CMD ["/tmp/entrypoint.sh"]
