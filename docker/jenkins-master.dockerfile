FROM jenkins/jenkins:alpine


USER root
# RUN apk --update --no-cache add openssh
RUN sed -i "s@:/var/jenkins_home:@:${JENKINS_HOME}:@g" /etc/passwd

# COPY entrypoint_orverrider.sh /
# ENTRYPOINT ["/master_entrypoint_orverrider.sh"]
USER jenkins
COPY init.groovy.d/*.groovy /usr/share/jenkins/ref/init.groovy.d/