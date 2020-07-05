FROM oscarfonts/geoserver:2.17.0

LABEL maintainer="DBCA ASI <asi@dbca.wa.gov.au>"

COPY build_exts_dir.sh /usr/local/bin/build_exts_dir.sh
COPY extensions /etc/geoserver_extensions
RUN build_exts_dir.sh -v $GEOSERVER_VERSION -f /etc/geoserver_extensions -t /var/local/geoserver-exts; cp /var/local/geoserver-exts/*/*.jar /usr/local/geoserver/WEB-INF/lib
