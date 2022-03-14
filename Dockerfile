FROM openjdk:19-jdk-alpine3.15
MAINTAINER zhulik.gleb@gmail.com

ENV PLANTUML_VERSION=1.2022.2
ENV LANG en_US.UTF-8
RUN \
  apk add --no-cache graphviz wget ca-certificates && \
  apk add --no-cache graphviz wget ca-certificates ttf-dejavu fontconfig && \
  wget "http://downloads.sourceforge.net/project/plantuml/${PLANTUML_VERSION}/plantuml.${PLANTUML_VERSION}.jar" -O plantuml.jar && \
  apk del wget ca-certificates
ENTRYPOINT ["java", "-Djava.awt.headless=true", "-jar", "plantuml.jar", "-p"]
CMD ["-tsvg"]

