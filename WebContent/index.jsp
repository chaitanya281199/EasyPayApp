<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Welcome page</title>
<style >
	.a{
	opacity: 0.7;
box-shadow: 10px 10px 5px black;
	}
	.a:hover {
	opacity: 1.0;
}
</style>
</head>
<body style="background-image: url('1.jpg');
 background-size:cover;
 background-position:center; 
 background-repeat:no-repeat; 
 background-origin: content-box;
 background-attachment: fixed;
  
 ">
   <div style="display:flex; justify-content:end; align-item:end ;margin-top:400px " >
    	
      		<div class="a" style="text-align: center; border; border-radius: 50px 15px; background: #FF8C00;height: 100px; width: 100px;margin-left:380px">
       		<br><a href="prep_reg_form.htm">
       		<h3 style="color:black;">Register</a><br>
      		</div>
   		
   		
      		<div class="a" style="text-align: center; border; border-radius: 15px; background:#FF8C00;height: 100px; width: 100px;margin-left:150px">
  		 	<br><a href="prep_log_form.htm">
  		 	<h3 style="color:black;">
  		 	User Login</a><br>
    		</div>
    	
     	
      		<div class="a" style="text-align: center; border; border-radius: 15px 50px; background: #FF8C00;height: 100px; width: 100px;margin-left:150px">
   			<a href="Admin_login_form.htm">
   			<h3 style="color:black;">
   			 Admin Login</a>
    		</div>
    	
   
  
</body>
</html>