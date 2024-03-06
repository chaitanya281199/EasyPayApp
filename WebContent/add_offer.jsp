<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Add Offers</title>
<style>
	.container-fluid{
		
		justify-content:center;
		height: 70vh;
		width:40vw;
		border: double;
		
	
	}
	.b{
		display: flex;
		align-items:flex-center;
		justify-content:flex-center;
		margin-left: 350px;
		margin-top: 50px;
	}
	.d{
		box-shadow: 5px 5px 2px black;
		border-radius: 20px;
		background:blue;	
		opacity: 0.7;
	}
	.d:hover {
	opacity: 1.0;
}
	body{
		background-image: url('28.jpg');
		 background-size:cover;
		 background-position:center; 
		 background-repeat:no-repeat; 
		 background-origin: content-box;
		 background-attachment: fixed;
	}
	table{
	border: 2px solid pink; 
	margin-top: 50px; 
	align:right;
	margin-left: 100px; 
	border-collapse: separate; 
	border-spacing: 15px;
	border-radius: 20px;
	box-shadow: 10px 10px 5px pink;
	color: black;
	
	}
	h1{
	   font-size: 50px;
	   text-align: center;
	
	}
	td,input{
	  font-size: 27px;
	}
	
</style>
</head>

<body>
   <h1>Add offers Here </h1>
<div class="b">
    
  <spr:form action="offer_add.htm" method="post" commandName="offers" >
	<table style=";" >
						
		<tr>
			<td>
				Plan :
			</td>
			<td>
				<spr:input path="plan"/>
			</td>
		</tr>
		<tr>
			<td>
				Validity:
			</td>
			<td>
				<spr:input path="validity"/>
			</td>
		</tr>
		<tr>
			<td>
				Benefits:
			</td>
			<td>
				<spr:input path="Benefits"/>
			</td>
		</tr>
		<tr>
			<td>
				<a href="AdminHome.jsp" >Back</a>
			</td>
			<td >
			
				<input class="d" type="submit"  value="Add Offers" > 
		</tr>
	</table>
	</div>
	</spr:form>
</body>
</html>