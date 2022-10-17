FROM google/cloud-sdk:alpine
RUN apk update && apk add mysql-client && rm -rf /var/cache/apk/*
COPY mysqlbackup.sh /var/mysqlbackup/mysqlbackup.sh
RUN chmod 777 /var/mysqlbackup/mysqlbackup.sh
CMD /var/mysqlbackup/mysqlbackup.sh