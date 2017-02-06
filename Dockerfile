FROM bitnami/minideb:jessie
MAINTAINER Ipman1971

LABEL org.label-schema.schema-version="1.0" \
      org.label-schema.name="oracle-jdk8" \
      org.label-schema.description="Base image for Oracle JDK 8" \
      org.label-schema.vcs-url="https://github.com/ipman1971/docker-base-images/oracle-jdk8" \
      org.label-schema.vendor="Ipman1971" \
      org.label-schema.version="1.0.0" \
      com.ipman1971.image-contents='{"contents": [{"name": "Oracle JRE 8", "version": "8u121-b13"}]}'

ENV JAVA_VERSION=8
ENV JAVA_UPDATE=121
ENV JAVA_BUILD=b13
ENV PATH_HASH=e9e7ea248e2c4826b92b3f075a80e441
ENV JAVA_HOME="/usr/lib/jvm/java-8-oracle"

RUN apt-get update
RUN apt-get install -y wget \
            unzip \
            libzip2 \
            libsnappy1 \
            libssl-dev

RUN set -x &&\
    cd /tmp && \
    wget --header "Cookie: oraclelicense=accept-securebackup-cookie;" \
                  "http://download.oracle.com/otn-pub/java/jdk/${JAVA_VERSION}u${JAVA_UPDATE}-${JAVA_BUILD}/${PATH_HASH}/jre-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.tar.gz" &&\
    tar -xzf "jre-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.tar.gz" &&\
    mkdir -p /usr/lib/jvm &&\
    mv "jre1.${JAVA_VERSION}.0_${JAVA_UPDATE}" "/usr/lib/jvm/java-${JAVA_VERSION}-oracle" &&\
    rm "jre-${JAVA_VERSION}u${JAVA_UPDATE}-linux-x64.tar.gz"

ENV PATH="$JAVA_HOME/bin:${PATH}"

RUN set -x && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]
