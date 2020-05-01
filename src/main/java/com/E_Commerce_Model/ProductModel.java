package com.E_Commerce_Model;

public class ProductModel {
	
	private int p_id;
	private String p_name;
	private int p_price;
	private String p_description;
	private String p_category;
	//private int p_quantity;
	

	public int getP_id() {
		return p_id;
	}
	public void setP_id(int p_id) {
		this.p_id = p_id;
	}
	
	
	public String getP_name() {
		return p_name;
	}
	public void setP_name(String p_name) {
		this.p_name = p_name;
	}
	
	
	/*
	 * public int getP_quantity() { return p_quantity; } public void
	 * setP_quantity(int p_quantity) { this.p_quantity = p_quantity; }
	 */
	
	public int getP_price() {
		return p_price;
	}
	public void setP_price(int p_price) {
		this.p_price = p_price;
	}

	
	
	public String getP_description() {
		return p_description;
	}
	public void setP_description(String p_description) {
		this.p_description = p_description;
	}
	

	
	public String getP_category() {
		return p_category;
	}
	public void setP_category(String p_category) {
		this.p_category = p_category;
	}
	@Override
	public String toString() {
		return "ProductModel [p_id=" + p_id + ", p_name=" + p_name + ", p_price=" + p_price + ", p_description="
				+ p_description + ", p_category=" + p_category + "]";
	}
	
	
	
}
