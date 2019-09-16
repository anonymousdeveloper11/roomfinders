package com.itn.roomfinders.configuration;

import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;
@Configuration
public class ResourceConfig implements WebMvcConfigurer {
	
	
	@Override
	public void addResourceHandlers(ResourceHandlerRegistry registry) {
	registry
	        .addResourceHandler("/images/**")
	        .addResourceLocations("file:///c:\\Users\\binod\\Desktop\\roomimage\\")
	        .setCachePeriod(3600);
	}

}
