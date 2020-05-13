package com.E_Commerce_DB_Connection;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;

import javax.naming.spi.DirStateFactory.Result;

import com.E_Commerce_Model.ProductModel;
import com.E_Commerce_Model.UserModel;
import com.E_Commerce_Service.IDAO;


public class DB_Connection implements IDAO {

	
	String user="sa";
	String password="";
	String url="jdbc:h2:tcp://localhost/~/test";
	Connection conn;
	PreparedStatement pstmt;
	Statement stmt;
	UserModel model;
	ProductModel pmodel;
	
	
	
	
	@Override
	public boolean getConnection() {
		
		System.out.println("Inside Connection Method");
		
		try {
			Class.forName("org.h2.Driver");
			conn=DriverManager.getConnection(url, user, password);
			System.out.println("Connection Successfully");
			
		
		} catch (ClassNotFoundException e) {
		
			System.out.println("Driver Exception"+e.getMessage());
		
		} catch (SQLException e) {
		
			
			System.out.println("Sql Exception"+e.getMessage());
		}
		
		if(conn!=null)
		{
			return true;
		}
		else
		{
			return false;
		}
	}




	@Override
	public List<UserModel> getUserRecord() {
		
		List<UserModel> users=new ArrayList();
		
		if(getConnection())
		{
			try {
				System.out.println("inside getUserRecords Method");
				stmt=conn.createStatement();
				String query="select * from users";
				ResultSet res=stmt.executeQuery(query);
				while(res.next())
				{
				model=new UserModel();
				model.setU_id(res.getInt("u_id"));
				model.setU_fname(res.getString("u_fname"));
				model.setU_lname(res.getString("u_lname"));
				model.setU_email(res.getString("u_email"));
				model.setU_password(res.getString("u_password"));
				users.add(model);
					
					
				}
				
			} catch (SQLException e) {
			
			System.out.println("Sql Exception"+e.getMessage());
			
			}
		}
		
		
		return users;
	}




	@Override
	public List<ProductModel> getProductRecord() {
		
		
		List<ProductModel> products=new ArrayList();
		
		if(getConnection())
		{
			try {
				System.out.println("inside getProducts Records");
				stmt=conn.createStatement();
				String query="select * from products";
				ResultSet result=stmt.executeQuery(query);
				while(result.next())
				{
					pmodel =new ProductModel();
					pmodel.setP_id(result.getInt("p_id"));
					pmodel.setP_name(result.getString("p_name"));
					pmodel.setP_price(result.getInt("p_price"));
					pmodel.setP_description(result.getString("p_description"));
					pmodel.setP_category(result.getString("p_category"));
					
					products.add(pmodel);
					
				}
				
			
			} catch (SQLException e) {
			
			System.out.println("Sql Exceprion "+e.getMessage());
			
			}
			
		}
		
		return products;
	}




	@Override
	public boolean insertUserRecord(UserModel model) {
		
		int rowInserted=0;
		if(getConnection())
		{
			try {
				System.out.println("inside Insert User Records");
				String query = " insert into users (u_fname,u_lname, u_email,u_password)"
					        + " values (?, ?, ?, ?)";
				pstmt=conn.prepareStatement(query);
			//	pstmt.setInt(1, model.getU_id());
				
				pstmt.setString(1, model.getU_fname());
				pstmt.setString(2, model.getU_lname());
				pstmt.setString(3, model.getU_email());
				pstmt.setString(4, model.getU_password());
				
				rowInserted=pstmt.executeUpdate();
				
			
			} catch (SQLException e) {
			
			System.out.println("Sql Exception"+e.getMessage());
			
			}
				
		}
		if(rowInserted>0)
		{
			return true;
		}
		else
		{
			return false;
					
		}
	}




	@Override
	public boolean insertProductRecord(ProductModel pmodel) {
	
		int rowInserted=0;
		if(getConnection())
		{
		
		try {
			System.out.println("inside Product insert Method");
			
			String query="insert into products (p_name,p_price,p_description,p_category) "
					+ "values (?,?,?,?)";
			
			pstmt=conn.prepareStatement(query);
			//pstmt.setInt(1, pmodel.getP_id());
			pstmt.setString(1, pmodel.getP_name());
			pstmt.setInt(2, pmodel.getP_price());
			pstmt.setString(3, pmodel.getP_description());
			pstmt.setString(4, pmodel.getP_category());
			
			rowInserted=pstmt.executeUpdate();	
			
			
		} 
		catch (SQLException e)
		{
		
		System.out.println("Sql Exception "+e.getMessage());
		
		}
		}
		
		if(rowInserted>0)
		{
			return true;
		}
		else
		{
	
			return false;
			
		}	
	
	}




	@Override
	public UserModel getUserRecordByID(int i) {
		
		if(getConnection())
		{
			try {
				String query="select * from users where u_id=? ";
				
				pstmt=conn.prepareStatement(query);
				pstmt.setInt(1, i);
				ResultSet result=pstmt.executeQuery();
				while(result.next())
				{
					model=new UserModel();
					model.setU_id(result.getInt("u_id"));
					model.setU_fname(result.getString("u_fname"));
					model.setU_lname(result.getString("u_lname"));
					model.setU_email(result.getString("u_email"));
					model.setU_password(result.getString("u_password"));
					
					
				}
			
			
			} catch (SQLException e) {
			
			System.out.println("SQl Exception "+e.getMessage());
			
			}
			
			
			
		}
		
		
		return model;
	}




	@Override
	public ProductModel getProductRecordById(int i) {
		if(getConnection())
		{

			try {
			
				String query ="select * from products where p_id=? ";
				
				pstmt=conn.prepareStatement(query);
				pstmt.setInt(1, i);
				ResultSet result=pstmt.executeQuery();
				
				while(result.next())
					
				{
					pmodel=new ProductModel();
					pmodel.setP_id(result.getInt("p_id"));
					pmodel.setP_name(result.getString("p_name"));
					pmodel.setP_price(result.getInt("p_price"));
					pmodel.setP_description(result.getString("p_description"));
					pmodel.setP_category(result.getString("p_category"));
					
					
				}
				
			
			} catch (SQLException e) {
			
			System.out.println("Sql Exception"+e.getMessage());
			
			}
			
				
		}
		
		return pmodel;
	}




	@Override
	public int EditUserRecord(UserModel model) {
		
		int rowCount=0;
		
		if(getConnection())
		{
			try {
				String query="UPDATE USERS" 
							+ " SET U_FNAME=? ,U_LNAME=?, U_EMAIL=? ,U_PASSWORD=? " 
							+" WHERE U_ID=?";
				
				pstmt=conn.prepareStatement(query);
				pstmt.setString(1, model.getU_fname());
				pstmt.setString(2, model.getU_lname());
				pstmt.setString(3, model.getU_email());
				pstmt.setString(4, model.getU_password());
				pstmt.setInt(5, model.getU_id());
				rowCount=pstmt.executeUpdate();
				
			} catch (SQLException e) {
			
			System.out.println("SQl Exception"+e.getMessage());
			}
				
			
		}
		
		return rowCount;
	}




	@Override
	public int EditProductRecord(ProductModel pmodel) {
		
		int rowCount=0;
		if(getConnection())
		{
			
			
			try {
			
				String query="UPDATE PRODUCTS "
						+"SET P_NAME=?,P_PRICE=? , P_DESCRIPTION=?,P_CATEGORY=?"
						+" WHERE P_ID=? ";
				
				pstmt=conn.prepareStatement(query);
				pstmt.setString(1,pmodel.getP_name());
				pstmt.setInt(2, pmodel.getP_price());
				pstmt.setString(3, pmodel.getP_description());
				System.out.println(pmodel.getP_description());
				pstmt.setString(4, pmodel.getP_category());
				pstmt.setInt(5, pmodel.getP_id());
				rowCount=pstmt.executeUpdate();
			
			} catch (SQLException e) {
			
				
				System.out.println("SQl Exception "+e.getMessage());
			
			}
			
		}
		
		return rowCount;
	}




	@Override
	public int DeleteUser(int i) {
		
		int rowDeleted=0;
		
		
		if(getConnection())
		{
			
			
			try {
			
				String query="DELETE FROM USERS WHERE U_ID =?";
				
				pstmt=conn.prepareStatement(query);
				pstmt.setInt(1, i);
				rowDeleted=pstmt.executeUpdate();
		
			
			} catch (SQLException e) {
		
				System.out.println("SQl Exception"+e.getMessage());

			
			}
			
		}
		
		return rowDeleted;
	}




	@Override
	public int DeleteProduct(int i) {
	
		
		int rowDelete=0;
		
		if(getConnection())
		{
			
			try {
		
				String query="DELETE PRODUCTS WHERE P_ID=?";
				
				pstmt=conn.prepareStatement(query);
				pstmt.setInt(1, i);
				rowDelete=pstmt.executeUpdate();
				
			}
			catch (SQLException e) {
			
			System.out.println("SQL EXCEPTION "+e.getMessage());
			
			}
	
		}
		
		
		return rowDelete;
	}




	@Override
	public boolean LoginUser(UserModel model )
	{
		
		boolean flag=false;
		
		if(getConnection())
		{
			try {
			
				String sql = "SELECT * FROM users WHERE u_email = ? and u_password = ?";
				 pstmt = conn.prepareStatement(sql);
				pstmt.setString(1, model.getU_email());
				pstmt.setString(2, model.getU_password());
						
				ResultSet result=pstmt.executeQuery();
				while(result.next())
				{
					model=new UserModel();
					model.setU_email(result.getString("U_email"));
					model.setU_password(result.getString("U_password"));
					flag=true;
					
				}
				
			} 
			catch (SQLException e) 
			{	
				System.out.println("SQL EXCEPTION "+e.getMessage());
			}
					
		}
		
		if(flag==true)
		{
			return true;
			
		}
		else
		{
			return false;
		}
		

	}
	
	

	
	
	
}
