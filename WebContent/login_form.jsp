<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
   <%@ page errorPage="Error_page.jsp" %>
   
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
<!DOCTYPE html>
<html>
<head>
 
<meta charset="ISO-8859-1">
<title>Login</title>
 <style>
    td{
    
     font-size: 27px;
    }
    h2{
    
      font-size: 50px;
    }
    .cl{
    font-size: 20px;
    }
 </style>
</head>
<body style="background-image: url('29.jpg');
 background-size:cover;
 background-position:center; 
 background-repeat:no-repeat; 
 background-origin: content-box;
 background-attachment: fixed;
  
 ">

<div>  

<h2 style="text-align: center;">Login Here!!!</h2>
   <spr:form action="login.htm" method="post" commandName="user" >
	<table align="center" style="border: 2px solid black; margin-top: 50px;
	 margin-left: 430px; border-collapse: separate; border-spacing: 15px; border-radius: 15px">
		<tr>
			<td >
				User Name:
			</td>
			<td >
				<spr:input path="userName" class="cl"/>
				<font color="red" ><spr:errors path="userName" ></spr:errors></font>
			</td>
		</tr>
		<tr>
			<td >
				Password:
			</td>
			<td>
				<spr:password path="userPass" class="cl"/>
				<font color="red" ><spr:errors path="userPass" ></spr:errors></font>
			</td>
		</tr>
		<tr>
		    <td>
				<a style=" font-size: 27px" href="forgot_password.html" >Forgot Password</a>
			</td>
			<td>
				<a style=" font-size: 27px" href="index.jsp" >Back</a>
			</td>
			<br>
			
		</tr>
		<tr>
		    <td>
		    
		    </td>
		     <td>
				<input style=" font-size: 27px;"type="submit"  value="Login" >
			</td>
	    </tr>
	</table>
	</spr:form>
</div>
</body>
</html>