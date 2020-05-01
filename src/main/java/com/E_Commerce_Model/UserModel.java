package com.E_Commerce_Model;

public class UserModel {
	
private int u_id;
private String u_fname;
private String u_lname;
private String u_email;
private String u_password;



public int getU_id() {
	return u_id;
}
public void setU_id(int u_id) {
	this.u_id = u_id;
}
public String getU_fname() {
	return u_fname;
}
public void setU_fname(String u_fname) {
	this.u_fname = u_fname;
}
public String getU_lname() {
	return u_lname;
}
public void setU_lname(String u_lname) {
	this.u_lname = u_lname;
}
public String getU_email() {
	return u_email;
}
public void setU_email(String u_email) {
	this.u_email = u_email;
}
public String getU_password() {
	return u_password;
}
public void setU_password(String u_password) {
	this.u_password = u_password;
}

@Override
public String toString() {
	return "UserModel [u_id=" + u_id + ", u_fname=" + u_fname + ", u_lname=" + u_lname + ", u_email=" + u_email
			+ ", u_password=" + u_password + "]";
}




}
