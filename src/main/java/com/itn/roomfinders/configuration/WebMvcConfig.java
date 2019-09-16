package com.itn.roomfinders.configuration;

import javax.servlet.MultipartConfigElement;

import org.springframework.boot.web.servlet.MultipartConfigFactory;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.orm.hibernate5.LocalSessionFactoryBean;

@Configuration
public class WebMvcConfig{
	
	@SuppressWarnings("deprecation")
	@Bean
	public MultipartConfigElement multipartConfigElement() {
	  MultipartConfigFactory factory = new MultipartConfigFactory();
	  factory.setMaxFileSize("10MB");
	  factory.setMaxRequestSize("10MB");
	  return factory.createMultipartConfig();
	}
	
//	public void addResourceHandlers(ResourceHandlerRegistry registry) {
//        registry.addResourceHandler("/resources/**")
//                .addResourceLocations("file:///c://users//binod//desktop//roomimage//");
	}
	