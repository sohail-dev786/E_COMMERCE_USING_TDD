package com.E_Commerce_Service;

import java.util.List;

import com.E_Commerce_Model.ProductModel;
import com.E_Commerce_Model.UserModel;

public interface IDAO {

	boolean getConnection();

	List<UserModel> getUserRecord();

	List<ProductModel> getProductRecord();

	boolean insertUserRecord(UserModel model);

	boolean insertProductRecord(ProductModel pmodel);

	UserModel getUserRecordByID(int i);

	ProductModel getProductRecordById(int i);

	int EditUserRecord(UserModel model);

	int EditProductRecord(ProductModel pmodel);

	int DeleteUser(int i);

	int DeleteProduct(int i);

	boolean LoginUser(UserModel model);



}
