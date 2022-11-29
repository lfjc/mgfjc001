FROM teddysun/xray
LABEL maintainer="lfjc"

COPY config.json /etc/ray/config.json
COPY ray.sh /ray.sh
RUN chmod +x /ray.sh
ENV PATH /usr/bin/ray:$PATH
ENV PORT 8888
ENV TZ=Asia/Shanghai

WORKDIR /etc/ray
ENTRYPOINT ["/ray.sh"]
CMD ["ray", "-config=/etc/ray/config.json"]
