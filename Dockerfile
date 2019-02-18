FROM konradboniecki/budget:java-base-image-290
HEALTHCHECK --start-period=5s --interval=10s --timeout=5s --retries=10 CMD curl -f http://localhost:8888/actuator/health
ADD /target/config-server-*.jar app.jar
ENTRYPOINT ["java", "-Djava.security.egd=file:/dev/./urandom", "-jar", "app.jar"]
