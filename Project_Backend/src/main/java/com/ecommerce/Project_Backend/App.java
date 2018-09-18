package com.ecommerce.Project_Backend;

//import org.hibernate.Hibernate;


import org.springframework.context.ApplicationContext;



import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.configuration.Hibernate_config;
import com.dao.ProductDaoImpl;
import com.dao.UserDaoImpl;



/**
 * Hello world!
 *
 */
public class App 
{
    public static void main( String[] args )
    {
    	System.out.println("Hello World !");
    	  ApplicationContext context=new AnnotationConfigApplicationContext
    			  (Hibernate_config.class,ProductDaoImpl.class,UserDaoImpl.class);
    	
       
    }
}
