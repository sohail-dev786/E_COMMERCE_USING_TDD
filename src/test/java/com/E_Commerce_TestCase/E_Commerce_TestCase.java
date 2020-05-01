package com.E_Commerce_TestCase;

import static org.junit.Assert.*;

import java.util.ArrayList;
import java.util.List;

import org.h2.engine.User;
import org.junit.Ignore;
import org.junit.Test;

import com.E_Commerce_DB_Connection.DB_Connection;
import com.E_Commerce_Model.ProductModel;
import com.E_Commerce_Model.UserModel;
import com.E_Commerce_Service.IDAO;

public class E_Commerce_TestCase {


	
	IDAO dbConnection=new DB_Connection();
	
	
	
	//*********  -->  CONNECTION TEST  *********//
	
	@Ignore
	@Test
	public void testingConnection()
	{
		boolean isConnected=dbConnection.getConnection();
		assertEquals(true, isConnected);
		
	}
	
	//********* --> TEST USER RECORD  *********//
	
	
	@Ignore
	@Test
	public void testUserRecord()
	{
		
		List<UserModel>  userlist=new ArrayList();
		userlist=dbConnection.getUserRecord();
		assertEquals(true, userlist.size()>0);
		
		
	}
	
	//*********TEST --> PRODUCT RECORD  *********//
	
	
	@Ignore
	@Test
	public void testProductRecord()
	{
		List<ProductModel> productslist=new ArrayList();
		productslist=dbConnection.getProductRecord();
		assertEquals(true, productslist.size()>0);
		
	}
	
	
	
	//*********TEST --> USER RECORDBYID  *********//
	
	
	@Ignore
	@Test
	public void testUserRecordById()
	{
		
		UserModel model=dbConnection.getUserRecordByID(1);
		String name=model.getU_fname();
		assertEquals("sohail", name);
		
	}
	
	//*********TEST --> PRODUCTS RECORDBYID  *********//
	
	
	@Ignore
	@Test
	public void testProductRecordById()
	{
		ProductModel pmodel=dbConnection.getProductRecordById(5);
		String product_name=pmodel.getP_name();
		assertEquals("MACBOOK PRO 5", product_name);
		
		
	}
	
	//*********TEST --> USER INSERT  *********//
	
	
	@Ignore
	@Test
	public void testInsertUser()
	{
		
		UserModel model=new UserModel();
		
		model.setU_id(4);
		model.setU_fname("kedra_sir");
		model.setU_lname("check");
		model.setU_email("kedar25@gmail.com");
		model.setU_password("786");
		boolean userRecord=dbConnection.insertUserRecord(model);
		assertEquals(true, userRecord);
		
		
		
	}

	
	//*********TEST --> PRODUCT INSERT  *********//
	

	
	
	@Ignore
	@Test
	public void testInsertProduct()
	{
		
		ProductModel pmodel=new ProductModel();
		
		pmodel.setP_id(5);
		pmodel.setP_name("MACBOOK PRO 6");
		pmodel.setP_price(50000);
		pmodel.setP_description("8 GB RAM 1TB INTERNAL");
		pmodel.setP_category("LAPTOP");
		boolean productRecord=dbConnection.insertProductRecord(pmodel);
		assertEquals(true, productRecord);
		
		
	}
	
	//*********TEST --> USER EDIT  *********//
	

	
	@Ignore
	@Test
	public void testEditUserRecord()
	{
		
		UserModel model=new UserModel();
		model.setU_id(3);
		model.setU_fname("eid");
		model.setU_lname("demo");
		model.setU_email("viral123@gmail.com");
		model.setU_password("456");
		int rowAffected=dbConnection.EditUserRecord(model);
		assertEquals(1, rowAffected);
		
			}
	
	
	//*********TEST --> PRODUCT EDIT  *********//
	
	
	@Test
	public void testEditProductRecord()
	{
		
		ProductModel pmodel=new ProductModel();
		pmodel.setP_id(1);
		pmodel.setP_name("IPHONE ");
		pmodel.setP_price(50000);
		pmodel.setP_description("16 GB RAM 16 GB INTERNAL");
		pmodel.setP_category("MOBILE");
		
		int rowAffected=dbConnection.EditProductRecord(pmodel);
		assertEquals(1,rowAffected);
		
		
	}
	
	
	//*********TEST --> DELETE USER  *********//
	
	@Ignore
	@Test
	
	public void testDeleteUser()
	{
		
		int rowDeleted=dbConnection.DeleteUser(3);
		assertEquals(1, rowDeleted);
		
		
		
	}
	
	//*********TEST --> DELETE PRODUCT  *********//
	
	
	@Ignore
	@Test
	public void testDeleteProduct()
	{
		int rowDeleted=dbConnection.DeleteProduct(5);
		assertEquals(1,rowDeleted);
		
		
		
	}
	
	//*********Test --> Login Verify ************//
	
	@Ignore
	@Test
	public void testLoginUser()
	{
		UserModel model=new UserModel();
		
		model.setU_email("kedar25@gmail.com");
		model.setU_password("786");	
		boolean verifying=dbConnection.LoginUser(model);
		assertEquals(true,verifying);
	
		
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
}
