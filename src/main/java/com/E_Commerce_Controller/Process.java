package com.E_Commerce_Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.E_Commerce_DB_Connection.DB_Connection;
import com.E_Commerce_Model.ProductModel;
import com.E_Commerce_Model.UserModel;
import com.E_Commerce_Service.IDAO;


public class Process extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	IDAO mydao;

	public Process() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
	
		
		String action=request.getPathInfo().toString();
		System.out.println(action);
		
		
		switch(action)
		{
		
		case "/login":
			userLogin(request,response);
			break;
		
		case "/userinsert":
			userRegister(request,response);
			break;
			
		case "/editUser":
			editUser(request,response);
			break;
			
			
		case "/addProduct":
			addProduct(request,response);
			break;
			
		case "/editProduct":
			editProduct(request,response);
			
			break;
		
		default:
        	System.out.println("Path Not Found");
            break;
        
		
		}
	
	
	
	
	}


	

	
	

	private void userLogin(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {

		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
	
		
		String userEmail=request.getParameter("uemail");
		String userPassword=request.getParameter("password");
	
		UserModel model=new UserModel();
		model.setU_email(userEmail);
		model.setU_password(userPassword);
		
		mydao=new DB_Connection();
		
		if(mydao.LoginUser(model))
		{
			
			out.println(" <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
			out.println(" <script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
			out.println("<script type='text/javascript'>");
			
			
			out.println(" $(document).ready(function(){ ");
			
			out.println(" swal('<H3>SUCCESSFULLY LOGIN </H3>', '<B>WELCOME TO  HOME PAGE</H1>', 'success'); ");
			
			//out.print("location.href='http://localhost:8080/E_COMMERCE_USING_TDD/Home.jsp'; ");
			
			out.println(" }); ");
			
			
			out.println("</script>");
					
			/*
			 * RequestDispatcher dispatcher=request.getRequestDispatcher("Home.jsp");
			 * dispatcher.forward(request, response);
			 */
			
			
			//response.sendRedirect("http://localhost:8080/E_COMMERCE_USING_TDD/Home.jsp");
			
		}
		
		else if(userEmail.equals("ADMIN")  && userPassword.equals("ADMIN")) 
		{
			
			out.println(" <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
			out.println(" <script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
			out.println("<script type='text/javascript'>");
			
			
			out.println(" $(document).ready(function(){ ");
			
			out.println(" swal('<H3>SUCCESSFULLY LOGIN </H3>', '<B>WELCOME TO ADMIN PANEL</H1>', 'success'); ");
			
			//out.print("location.href='http://localhost:8080/E_COMMERCE_USING_TDD/Admin.jsp'; ");
			
			out.println(" }); ");
			
			
			out.println("</script>");
			
			
		}
		else
		{
			
			
			out.println(" <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
			out.println(" <script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
			out.println("<script type='text/javascript'>");
			
			
			out.println(" $(document).ready(function(){ ");
			
			out.println(" swal('<H1>sorry </H1>', '<B>INCORRECT USEREMAIL  AND PASSWORD<B></BR> PLEASE TRY AGAIN ', 'error'); ");
			
			//out.print("location.href='http://localhost:8080/E_COMMERCE_USING_TDD/Login.jsp'; ");
			
			out.println(" }); ");
			
			
			out.println("</script>");
			
			
			
		//	RequestDispatcher dispatcher=request.getRequestDispatcher("http://localhost:8080/E_COMMERCE_USING_TDD/Login.jsp");
			
		//response.sendRedirect("http://localhost:8080/E_COMMERCE_USING_TDD/Login.jsp");
					
		}
		
	
		
	}

	

	
	
	
	private void userRegister(HttpServletRequest request, HttpServletResponse response) throws IOException {

		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
	
		
		String fname=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String email=request.getParameter("uemail");
		String password=request.getParameter("password");
		
		
		UserModel model=new UserModel();
		model.setU_fname(fname);
		model.setU_lname(lname);
		model.setU_email(email);
		model.setU_password(password);
		
		mydao=new DB_Connection();
		
		if(mydao.insertUserRecord(model)) 
		{
		
			
			
			out.println(" <script src='https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js'></script>");
			out.println(" <script src='https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js'></script>");
			out.println("<script type='text/javascript'>");
			
			
			out.println(" $(document).ready(function(){ ");
			
			out.println(" swal('WELCOME ', '<b>SUCCESSFULLY REGISTER<b>    <br/><br/>  <strong>PLEASE LOGIN TO VERIFY <strong>','success'); ");
			
			// out.print("location.href='http://localhost:8080/E_COMMERCE_USING_TDD/Login.jsp'; ");
			
			out.println(" }); ");
			
			
			out.println("</script>");
		
			
//			response.sendRedirect("http://localhost:8080/E_COMMERCE_USING_TDD/Login.jsp");
				

		
		}
		else
		{
				
			response.sendRedirect("http://localhost:8080/E_COMMERCE_USING_TDD/UserRegister.jsp");
	
		}
		
		
		
		
	}

	
	

	private void editUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
			
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		UserModel umodel=new UserModel();
		
		
		int id=Integer.parseInt(request.getParameter("uid"));
		
		String Fname=request.getParameter("fname");
		
		String Lname=request.getParameter("lname");
		
		String Email=request.getParameter("email");
		
		String Password=request.getParameter("pass");
		
		umodel.setU_id(id);
		umodel.setU_fname(Fname);
		umodel.setU_lname(Lname);
		umodel.setU_email(Email);
		umodel.setU_password(Password);
		
		
		IDAO mydao=new DB_Connection();
		mydao.EditUserRecord(umodel);
		
		response.sendRedirect("http://localhost:8080/E_COMMERCE_USING_TDD/Admin.jsp");
		
		
		
		
		

		
	}

	
	
	
	private void addProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
	
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		
		String p_name=request.getParameter("pname");
		int p_price=Integer.parseInt(request.getParameter("price"));
		String description=request.getParameter("desc");
		String category=request.getParameter("category");
		
		ProductModel pmodel=new ProductModel();
		
		pmodel.setP_name(p_name);
		pmodel.setP_price(p_price);
		pmodel.setP_description(description);
		pmodel.setP_category(category);
		
		IDAO mydao=new DB_Connection();
		if(mydao.insertProductRecord(pmodel))
		{
			
			response.sendRedirect("http://localhost:8080/E_COMMERCE_USING_TDD/Admin.jsp");
			
			
		}
		
		
		
		
	}
	
	
	
	

	private void editProduct(HttpServletRequest request, HttpServletResponse response) throws IOException {
	
		
		response.setContentType("text/html");
		PrintWriter out=response.getWriter();
		
		int p_id=Integer.parseInt(request.getParameter("pid"));
		
		String p_name=request.getParameter("pname");
		
		int p_price=Integer.parseInt(request.getParameter("price"));
		
		String desc=request.getParameter("description");
		
		String cat=request.getParameter("category");
		
		
		
		ProductModel pmodel=new ProductModel();
		pmodel.setP_id(p_id);
		pmodel.setP_name(p_name);
		pmodel.setP_price(p_price);
		pmodel.setP_description(desc);
		pmodel.setP_category(cat);
		
		IDAO mydao=new DB_Connection();
		mydao.EditProductRecord(pmodel);
		
		response.sendRedirect("http://localhost:8080/E_COMMERCE_USING_TDD/Admin.jsp");
		
		
		
		
		
		
		
	
	}
	
	
	
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

	
	
	
	
	
	
}
