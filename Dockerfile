FROM openjdk:8-jdk-alpine

ENV VERSION 2.3.1
ENV PATH ${PATH}:/etc/gatling/bin

RUN wget -O /tmp/gatling-charts-highcharts-bundle-$VERSION-bundle.zip \
    https://repo1.maven.org/maven2/io/gatling/highcharts/gatling-charts-highcharts-bundle/$VERSION/gatling-charts-highcharts-bundle-$VERSION-bundle.zip \
  && unzip /tmp/gatling-charts-highcharts-bundle-$VERSION-bundle.zip -d /etc \
  && mv /etc/gatling-charts-highcharts-bundle-$VERSION /etc/gatling \
  && chmod +x /etc/gatling/bin/gatling.sh /etc/gatling/bin/recorder.sh \
  && rm /tmp/gatling-charts-highcharts-bundle-$VERSION-bundle.zip