FROM jenkins:latest
COPY share /var/jenkins_home
USER root
RUN wget https://updates.jenkins-ci.org/latest/jenkins.war
RUN cp -f jenkins.war /usr/share/jenkins/
RUN wget http://mirror.apache-kr.org/maven/maven-3/3.6.1/binaries/apache-maven-3.6.1-bin.tar.gz
RUN tar xzvf apache-maven-3.6.1-bin.tar.gz -C /usr/share/
RUN update-alternatives --install /usr/bin/mvn mvn /usr/share/apache-maven-3.6.1/bin/mvn 9999
