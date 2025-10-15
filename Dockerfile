# Step 1: Use an official Tomcat image
FROM tomcat:9.0-jdk17-openjdk

# Step 2: Maintainer info (optional)
LABEL maintainer="yourname@example.com"

# Step 3: Remove default ROOT app (optional but clean)
RUN rm -rf /usr/local/tomcat/webapps/*

# Step 4: Copy your WAR file into Tomcat’s webapps directory
COPY target/dptweb-1.0.war /usr/local/tomcat/webapps/ROOT.war

# Step 5: Expose port 8080
EXPOSE 8080

# Step 6: Start Tomcat
CMD ["catalina.sh", "run"]
