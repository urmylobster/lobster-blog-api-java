package com.lobster.tobebraverman;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;

@SpringBootApplication
@MapperScan("com.lobster.tobebraverman.dao")
public class LobsterBlogApiJavaApplication {

	public static void main(String[] args) {
		SpringApplication.run(LobsterBlogApiJavaApplication.class, args);
	}

}
