package com.itn.roomfinders.configuration;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
@EnableWebSecurity
@Configuration
public class WebSecurityConfig  extends WebSecurityConfigurerAdapter{
	 @Autowired
	    PasswordEncoder passwordEncoder;
	    
	    @Autowired
	    private DataSource dataSource;
	    
	    @Bean
	    public PasswordEncoder passwordEncoder(){
	        return new BCryptPasswordEncoder();
	        
	        
	    }
	    @Override
	    protected void configure(AuthenticationManagerBuilder auth) throws Exception{
	        
	        auth.jdbcAuthentication().dataSource(dataSource)
	                .usersByUsernameQuery("select username,password,active "
	                +"from Users_Details where username=?")
	                .authoritiesByUsernameQuery("select ud.username,ur.role from Users_Details as ud,"
	                +"Users_Roles as ur where "
	                +"ud.ud_id=ur.ud_id and username=?")
	                .passwordEncoder(passwordEncoder);
	        
	    }
	    
	    @Bean
	    public AuthenticationSuccessHandler myAuthenticationSuccessHandler(){
	        return new MySimpleUrlAuthenticationSuccessHandler();
	    }
	    @Override
	    protected void configure(HttpSecurity http) throws Exception{
	        http.authorizeRequests()
	               .antMatchers("/admin/**").hasRole("ADMIN")
	                .antMatchers("/owner/**").hasRole("OWNER")
	                .antMatchers("/user/**").hasRole("USER")
	                .antMatchers("/**").permitAll()
	                .and()
	                .formLogin()
	                .loginPage("/login")
	                .loginProcessingUrl("/login")
	                .usernameParameter("username")
	                .passwordParameter("password")
	                .defaultSuccessUrl("/adminhome.jsp")
	                .successHandler(myAuthenticationSuccessHandler())
	                .failureUrl("/login?error=true")
	                .permitAll()
	                .and()
	                .logout()
	                .logoutUrl("/logout")
	                .logoutSuccessUrl("/login?logout=true")
	                .invalidateHttpSession(true)
	                .permitAll()
	                .and()
	                .csrf()
	                .disable();
	                
	        
	                
	        
	    }
	    
	    

}
