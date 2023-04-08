package pl.konradboniecki.configserver;

import org.springframework.boot.SpringApplication;
import org.springframework.cloud.config.server.EnableConfigServer;
import pl.konradboniecki.chassis.ChassisApplication;

@EnableConfigServer
@ChassisApplication
public class ConfigServerApplication {

    public static void main(String[] args) {
        SpringApplication.run(ConfigServerApplication.class, args);
    }
}
