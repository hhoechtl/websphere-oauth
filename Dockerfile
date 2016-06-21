FROM websphere-liberty
RUN installUtility install --acceptLicense adminCenter-1.0
RUN installUtility install --acceptLicense collectiveController-1.0
RUN installUtility install --acceptLicense oauth-2.0
COPY ./server.xml /opt/ibm/wlp/usr/servers/defaultServer/server.xml
COPY ./testpage.ear /opt/ibm/wlp/usr/servers/defaultServer/dropins/testpage.ear

EXPOSE 9080 9443
