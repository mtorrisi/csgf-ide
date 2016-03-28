#
# Liferay 6.1.1 Dockerfile
#

FROM u1404/oracle_jdk7

MAINTAINER Mario Torrisi <smario.torrisi@ct.infn.it>

RUN apt-get update && apt-get install -y unzip

# Download liferay
RUN wget "https://sourceforge.net/projects/lportal/files/Liferay%20Portal/6.1.1%20GA2/liferay-portal-glassfish-6.1.1-ce-ga2-20120731132656558.zip"
RUN unzip liferay-portal-glassfish-6.1.1-ce-ga2-20120731132656558.zip -d /opt

RUN chmod +x /opt/liferay-portal-6.1.1-ce-ga2/glassfish-3.1.2/bin/asadmin

# Ports
EXPOSE 8080 4848
