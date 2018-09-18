package security;

import javax.sql.DataSource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.Import;
import org.springframework.security.config.annotation.authentication.builders.AuthenticationManagerBuilder;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.config.annotation.web.configuration.WebSecurityConfigurerAdapter;

@Configuration
@EnableWebSecurity
@Import({controller.SuccessHandler.class})

public class SecurityConfig extends WebSecurityConfigurerAdapter {
	
	@Autowired
	DataSource dataSource;
	@Autowired
	   controller.SuccessHandler successHandler;
	@Autowired
	public void configAuthentication(AuthenticationManagerBuilder auth) throws Exception {
	
	auth.jdbcAuthentication().dataSource(dataSource)
	.usersByUsernameQuery("select Username,Password, enabled from User where Username=?")
	
	.authoritiesByUsernameQuery("select username, role from Authorities where username=?");
	} 
	@Override
	protected void configure(HttpSecurity http) throws Exception {

	http.authorizeRequests()
	.antMatchers("/AdminHome**").access("hasRole('ROLE_ADMIN')")
	.antMatchers("/home").access("hasRole('ROLE_USER')")
	.and()
	.formLogin().loginPage("/Loginform").successHandler(successHandler).failureUrl("/login?error")
	.usernameParameter("Username").passwordParameter("Password")
	
	.and()
	.logout().logoutUrl("/perform_logout").logoutSuccessUrl("/Loginform?logout")
	.and()
	.exceptionHandling().accessDeniedPage("/403")
	.and()
	.csrf().disable();
	}
	}


