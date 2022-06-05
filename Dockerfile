FROM konradboniecki/budget:java-base-image-latest
HEALTHCHECK --start-period=5s --interval=10s --timeout=5s --retries=10 CMD curl -f http://localhost:8888/actuator/health
ADD /target/config-server-*.jar app.jar
ENTRYPOINT ["java", "-jar", \
    "-Djava.security.egd=file:/dev/./urandom ", "app.jar", \
    "-Dencrypt.key=${CONFIG_ENCRYPT_KEY}"
]
