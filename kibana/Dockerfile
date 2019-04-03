FROM kibana:6.7.0

USER root

RUN echo proxy=http://proxy.iutcv.fr:3128 >> /etc/yum.conf

RUN yum update -y && yum install -y nmap

COPY entrypoint.sh /tmp/entrypoint.sh
RUN chmod +x /tmp/entrypoint.sh

USER kibana

CMD ["/tmp/entrypoint.sh"]
