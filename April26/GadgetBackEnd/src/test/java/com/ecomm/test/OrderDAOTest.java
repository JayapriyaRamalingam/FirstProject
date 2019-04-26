package com.ecomm.test;

import static org.junit.Assert.*;

import org.junit.BeforeClass;
import org.junit.Ignore;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import com.ecomm.dao.OrderDAO;
import com.ecomm.model.OrderDetail;

public class OrderDAOTest {
	
	static OrderDAO orderDAO;
	
	
	@BeforeClass
	public static void initialize()
	{
		AnnotationConfigApplicationContext context = new AnnotationConfigApplicationContext();
		context.scan("com.ecomm");
		context.refresh();
		
		orderDAO = (OrderDAO) context.getBean("orderDAO");
	}
	
	//@Ignore
	@Test
	public void paymentProcessTest()
	{
		OrderDetail orderDetail = new OrderDetail();
		orderDetail.setUsername("priya");
		orderDetail.setTotalShoppingAmount(5000);
		orderDetail.setOrderdate(new java.util.Date());
		orderDetail.setPaymentMode("COD");
		
		assertTrue("Problem in Adding Cart",orderDAO.paymentProcess(orderDetail));	
	}
	
	
	@Test
	public void updateCartItemStatusTest()
	{
		assertTrue("Problem in updateCartItemStatus:",orderDAO.updateCartItemStatus("RR",377));
		
	}
	

}
