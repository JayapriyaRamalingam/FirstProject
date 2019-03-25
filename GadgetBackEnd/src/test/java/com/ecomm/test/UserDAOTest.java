package com.ecomm.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.UserDAO;
import com.ecomm.model.UserDetail;

public class UserDAOTest
{
	static UserDAO userDAO; 
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.ecomm");
		context.refresh();
		
		userDAO = (UserDAO) context.getBean("userDAO");
	}
	
	@Ignore
	@Test
	public void registerUserTest()
	{
		UserDetail user = new UserDetail();
		user.setUsername("JP");
		user.setPassword("9491");
		user.setCustomerName("EV");
		user.setRole("seller");
		user.setEnable(true);
		user.setAddress("Chennai");
		
		assertTrue("Problem in Adding User", userDAO.registerUser(user));
		System.out.println("\n");
		System.out.println("user \""+user.getUsername()+"\" detail will be stored in database ");
		System.out.println("\n");
	}
	
	
	//@Ignore
	@Test
	public void updateUserTest()
	{
		UserDetail user = userDAO.getUser("JP");
		user.setPassword("6073");
		
		assertTrue("problem in updating user", userDAO.updateUser(user));
		
		
		System.out.println("\n");
		System.out.println("user \""+user.getUsername()+"\" password will be updated in database ");
		System.out.println("\n");
		
	}

}
