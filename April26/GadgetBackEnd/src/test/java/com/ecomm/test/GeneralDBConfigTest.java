package com.ecomm.test;

import static org.junit.Assert.*;

import org.hibernate.SessionFactory;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

public class GeneralDBConfigTest 
{

	public static void main(String [] args) 
	{
		AnnotationConfigApplicationContext context=new AnnotationConfigApplicationContext();
		context.scan("com.ecomm");
		context.refresh();

		SessionFactory sessionFactory = (SessionFactory)context.getBean("sessionFactory");
	}

}
