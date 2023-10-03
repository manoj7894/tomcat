# Use an official Tomcat image as the base image
FROM tomcat:latest

# (Optional) Set environment variables for Tomcat manager access
ENV CATALINA_OPTS="-Duser.username=admin -Duser.password=admin -Duser.roles=manager-gui,manager-script"
ENV CATALINA_HOME=/usr/local/tomcat

# (Optional) Copy a custom context.xml for manager access
# COPY context.xml $CATALINA_HOME/webapps/manager/META-INF/

# (Optional) Copy a custom server.xml for additional configuration
# COPY server.xml $CATALINA_HOME/conf/

# Expose the default Tomcat port
EXPOSE 8080

# Start Tomcat when the container starts
CMD ["catalina.sh", "run"]
