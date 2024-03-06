<%@page import="com.cdac.dto.AdminAddOffers"%>
<%@page import="java.util.List"%>
<%@page import="com.cdac.dto.User"%>
    <%@ include file="Cache-Control.jsp" %>
    <jsp:useBean id="user" class="com.cdac.dto.User" scope="session" ></jsp:useBean>
<% 
	if(user !=null && user.getUserId()>0){
%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
    <%@page import="com.cdac.dto.User"%>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Recharge Page</title>
<style >
  td,a{
  font-size: 24px;
  
  }
  .abc{
    font-size: 20px;
  }


</style>
</head>
<body

style="background-image: url('8.jpg');
 background-size:cover;
 background-position:center; 
 background-repeat:no-repeat; 
 background-origin: content-box;
 background-attachment: fixed;">
     <%@ include file="header.jsp" %>
     <h2 style="margin-left:100px;font-size:45px; margin-top:50px;color:brown;">Recharge Here  !!!</h2><br>
    <spr:form action="recharge_add.htm" method="post" commandName="recharge" >
    
	<table align="center" style="text-align: center;border: 2px solid black; margin-top: 50px;
	 margin-left:50px;margin-top:12px;margin-right:330px; border-collapse: separate; border-spacing: 15px;border-radius: 20px">

	  
		<tr>
			<td>
				Enter Mobile Number :
			</td>
			<td>
			    <font color="red" ><spr:errors path="mobNo" ></spr:errors></font>
				<spr:input path="mobNo"  class="abc"/>
				 
			</td>
		</tr>
		
		<tr>
			<td>
				Enter Amount :
			</td>
			<td>
			
			    <font color="red" ><spr:errors path="amount" ></spr:errors></font>
				<spr:input path="amount" class="abc" /><br>
				
			</td>
		</tr>
		
	    
	     <tr>
			<td>
		         <a href="view_offer.htm">View Offer</a>
			</td>
			<td>
				<a href="home.jsp" >Back</a>
			</td>
		</tr>
		<tr>
			<td>
			    
			</td>
			<td>
				<input style="color: brown ;  text-align:center; font-size: 20px; "type="submit"  value="Recharge" >
			</td>
		</tr>
	</table>
</spr:form>

</body>
</html>
<% }else{
	
	response.sendRedirect("login_form.jsp");	
	
}
	%>