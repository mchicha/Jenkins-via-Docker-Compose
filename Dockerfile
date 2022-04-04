FROM jenkins/jenkins:latest
ENV JAVA_OPTS -Djenkins.install.runSetupWizard=false
ENV JENKINS_OPTS: --argumentsRealm.roles.user=admin --argumentsRealm.passwd.admin=admin --argumentsRealm.roles.admin=admin
COPY plugins.txt /usr/share/jenkins/ref/plugins.txt
RUN /usr/local/bin/install-plugins.sh < /usr/share/jenkins/ref/plugins.txt