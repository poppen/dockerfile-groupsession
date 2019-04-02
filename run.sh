#!/bin/sh

while [ "$(curl -s -o /dev/null -I -w "%{http_code}" http://localhost:8080/gsession/)" != "200" ]; do
	echo "Waiting for GroupSession to respond"
	sleep 5
done

cp /tmp/gsdata.conf /usr/local/tomcat/webapps/gsession/WEB-INF/conf/
touch /usr/local/tomcat/webapps/gsession/WEB-INF/web.xml
tail -f /dev/null
