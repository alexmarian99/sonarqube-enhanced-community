FROM sonarqube:9.9.6-community

# Multiple branches and pull request support for Community Edition
COPY --chown=sonarqube:sonarqube ./sonarqube-community-branch-plugin-1.12.0.jar /opt/sonarqube/extensions/plugins/
ENV PLUGIN_VERSION=1.12.0
ENV SONAR_WEB_JAVAADDITIONALOPTS="-javaagent:./extensions/plugins/sonarqube-community-branch-plugin-${PLUGIN_VERSION}.jar=web"
ENV SONAR_CE_JAVAADDITIONALOPTS="-javaagent:./extensions/plugins/sonarqube-community-branch-plugin-${PLUGIN_VERSION}.jar=ce"
