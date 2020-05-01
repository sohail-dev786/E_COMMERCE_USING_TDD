<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>CREATE A ACCOUNT</title>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<style>
   
.container
	{
	
	margin-left:10%;
	margin-top:70%;
	margin-right:50%;
	margin-bottom:20%;

	}  

   body
    {
    background-color:#39e40e61;
    
    }
    #register
    {
    
    background-color:#ffffff;
    margin-left:26%;
    
    }
    
    .waves-effect
    {
    background-color:#39e40e61;
    color:#000000;
    border-radius:20px;
    font-weight:bold;
    font-size:20px;
    cursor: pointer;
    border: none;
    
    }
    .waves-effect:hover
    {
    cursor: pointer;
    background-color: #ffffff;
    border-radius:20px;
    color:#000000;
    font-weight:bold;
    font-size:20px;
    border:2px solid #39e40e61;
    
    
    
    }
    
    .text-muted
    {
    
    font-weight: bold;
    }
    
    .signup
    {
    
    font-weight: bold;
    font-size:30px;
    text-transform:uppercase;
    
    
    }
    

</style>


</head>
<body>
  <div class="container my-4">


     <section id="register-form">

        
        
          <!--Grid row-->
          <div class="row">
        
            <!--Grid column-->
        
              <section id="register">
         
                <form action="Process/userinsert"  method="post"  class="text-center border border-light p-5">
        
                  <p class="h4 mb-4 signup">Sign up</p>
        
                  <div class="form-row mb-4">
                    
                    <div class="col">
                    
                      <input type="text" id="defaultRegisterFormFirstName" class="form-control" placeholder="First name" name="fname" >
                   
                    </div>
                    
                    
                    <div class="col">
                   
                      <input type="text" id="defaultRegisterFormLastName" class="form-control" placeholder="Last name" name="lname">
                   
                    </div>
                  </div>
        
                  <!-- E-mail -->
                 
                  <input type="email" id="defaultRegisterFormEmail" class="form-control mb-4" placeholder="E-mail" name="uemail">
        
                  
                  
                  
                  <!-- Password -->
                 
                 
                  <input type="password" id="defaultRegisterFormPassword" class="form-control" placeholder="Password" aria-describedby="defaultRegisterFormPasswordHelpBlock" name="password">
                  <small id="defaultRegisterFormPasswordHelpBlock" class="form-text text-muted mb-4">
                    At least 8 characters and 1 digit
                  </small>
        
				 
				 
				 
				 <!--Confirm Password -->
				        
   				 <input type="password" id="defaultRegisterFormPassword" class="form-control" placeholder="ConfirmPassword" aria-describedby="defaultRegisterFormPasswordHelpBlock" name="password">
                  <small id="defaultRegisterFormPasswordHelpBlock" class="form-text text-muted mb-4">
                    Confirm Your Password 
                  </small>
        
        
                  <!-- Sign up button -->
                
                  <button class="btn btn-info my-4 btn-block waves-effect waves-light" type="submit" onclick=" return confirmPassword()">Sign in</button>
        
        
        
        
                </form>
        
              </section>
        
            </div>
                        
    </section>       
            </div>
          
           
            
       
</body>
</html>