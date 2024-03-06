<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
<!DOCTYPE html>
<html>
<head>

<meta charset="ISO-8859-1">
<title>Registration Form</title>
<style type="text/css">
   td{
   color: white;
   font-size: 30px;
   }
   .c1{
      font-size: 25px;
   }

</style>
</head>
<body style="background-image: url('39.jpg');
 background-size:cover;
 background-position:center; 
 background-repeat:no-repeat; 
 background-origin: content-box;
 background-attachment: fixed;
 ">
<H2 style="text-align: center;color:white; font-size: 40px;">Register Here!!!</H2>
   <spr:form action="reg.htm" method="post" commandName="user" >
	<table align="center;" style="border: 2px solid white; margin-top: 50px;
	 margin-left: 400px; border-collapse: separate; border-spacing: 15px;border-radius: 20px" >
		<tr>
			<td>
			 Name:
			</td>
			<td>
			 <font color="red" ><spr:errors path="userName" ></spr:errors></font>
				<spr:input path="userName" class="c1"/>
				
			</td>
		</tr>
		<tr>
			<td>
				Password:
			</td>
			<td>
			 
				<spr:password path="userPass" class="c1"/>
				 <font color="red" ><spr:errors path="userPass" ></spr:errors></font>
			</td>
		</tr>
		<tr>
			<td>
			 
				Mobile No:
			</td>
			<td>
			 
				<spr:input path="mobNo" class="c1"/>
				<font color="red" ><spr:errors path="mobNo" ></spr:errors></font>
			</td>
		</tr>
		<tr>
			<td>
			 
				EmailId:
			</td>
			<td>
			<font color="red" ><spr:errors path="emailId" ></spr:errors></font>
				<spr:input path="emailId" class="c1"/>
			</td>
		</tr>
		<tr>
			<td>
				<a href="index.jsp" style="font-size: 27px;" >Back</a>
			</td>
			<td>
				<input style="background-color:lightGreen; font-size:30px; coursor:pointer"  type="submit"  value="Register" >
			</td>
		</tr>
	</table>
	</spr:form>
    
</body>

</html>
