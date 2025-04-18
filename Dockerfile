# Use official Tomcat 8 image as base
FROM tomcat:8.0-jre8

# Remove default Tomcat apps (optional)
RUN rm -rf /usr/local/tomcat/webapps/ROOT
RUN rm -rf /usr/local/tomcat/webapps/docs
RUN rm -rf /usr/local/tomcat/webapps/examples

# Copy the WAR file (after Maven build) into Tomcat's webapps
COPY target/onlinebookstore.war /usr/local/tomcat/webapps/ROOT.war

# Expose port 8080 (Tomcat default)
EXPOSE 8082

# Start Tomcat
CMD ["catalina.sh", "run"]
