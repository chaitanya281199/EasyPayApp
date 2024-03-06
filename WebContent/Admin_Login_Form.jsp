<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Login</title>
<style>
	.container-fluid{
		
		justify-content:center;
		height: 70vh;
		width:40vw;
		border: double;
		
	
	}
	.b{
		display: flex;
		align-items: left;
		justify-content:left;
	}
	.d{
		box-shadow: 5px 5px 2px black;
		border-radius: 20px;
		background:#3498DB;	
		opacity: 0.7;
		font-size: 24px;
	}
	.d:hover {
	opacity: 1.0;
	
}
	td{
	   font-size: 27px;
	   
	}
	input{
	   
	   font-size: 18px;
	}
	
</style>
</head>
<body style="background-image: url('22.jpg');
 background-size:cover;
 background-position:center; 
 background-repeat:no-repeat; 
 background-origin: content-box;
 background-attachment: fixed;
  
 ">
 <div class="b">
	
	
			<form action="Admin_login.htm" method="post">
				 	
				 <table style="border: 2px solid black; margin-top: 40px; align=left;
	 				margin-left: 200px; border-collapse: separate; border-spacing: 15px;border-radius: 20px;box-shadow: 10px 10px 5px black;" >
						<tr>
							<td>
		  						<label for="AdminName">Admin Username : </label>
		  					</td>
							<td>
		    					<input type="text" class="form-control" id="AdminName" name="adminName" >
		    				
							</td>
						</tr>
		  				<tr>
							<td>
			    			<label for="exampleInputPassword1">Admin Password:</label>
			    			</td>
							<td>	
			    			
			    			<input type="password" class="form-control" id="exampleInputPassword1" name="admpassword">
			  				</td>
						</tr>
						
		  				<tr>
		  				<td>
							</td>
							<td>
		  					<button type="submit" class="d">Admin Login</button>
		 					</td>
						</tr>
				</form>
				
			
		
			
			
	



		
	</div>
</body>
</html>