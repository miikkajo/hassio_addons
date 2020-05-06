ARG BUILD_FROM
FROM $BUILD_FROM
ENV LANG C.UTF-8
RUN apk add --no-cache  python3 py3-paho-mqtt py3-pip 
RUN pip3 install --no-cache-dir PyYAML 
ADD mqttlistener.py /
COPY run.sh /
RUN chmod a+x /run.sh
ENTRYPOINT [ "/run.sh" ]