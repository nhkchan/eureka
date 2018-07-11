# LICENSE UPL 1.0
#
# Copyright (c) 2015 Oracle and/or its affiliates. All rights reserved.
#
#FROM oracle/serverjre:8
FROM openshift/redhat-openjdk18-openshift:1.3
MAINTAINER Kenneth Cootauco <kenneth.cootauco2@loblaw.ca>

COPY SubscriptionsAppSB-Eureka-0.0.1.jar /tmp/app.jar

ENV JAVA_OPTS=""
ENV SPRING_PROFILE="default"
ENV MONGO_PASSWORD=""

EXPOSE 8180

ENTRYPOINT exec java $JAVA_OPTS \
 -Djava.security.egd=file:/dev/./urandom \
 -Dspring.profiles.active=$SPRING_PROFILE \
 -jar /tmp/app.jar
