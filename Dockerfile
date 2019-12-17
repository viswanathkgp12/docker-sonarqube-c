FROM sonarqube:7.9-community

RUN cd /opt/sonarqube/extensions/plugins && \
  curl -fsSLO https://github.com/SonarOpenCommunity/sonar-cxx/releases/download/cxx-1.3.1/sonar-c-plugin-1.3.1.1807.jar
 
ENTRYPOINT ["./bin/run.sh"]
