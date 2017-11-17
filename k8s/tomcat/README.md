# Image para tomcat
- docker build --force-rm -t anspfeifer/tomcat8:2.0 .
- docker run --rm --name test-tomcat -p 8080:8080 anspfeifer/tomcat8:2.0
- docker push anspfeifer/tomcat8:2.0