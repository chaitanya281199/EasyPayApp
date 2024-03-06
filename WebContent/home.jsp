<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="com.cdac.dto.User"%>
    <%@ include file="Cache-Control.jsp" %>
    <jsp:useBean id="user" class="com.cdac.dto.User" scope="session" ></jsp:useBean>
<% 
	if(user !=null && user.getUserId()>0){
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Home Page</title>
<style >
	.a{
	opacity: 0.7;
     background: black;
	color: red;
	box-shadow: 10px 10px 5px black;
	}
	.a:hover {
	opacity: 1.0;
	
}
h3 {
  
}

</style>
</head>
<body style="background-image: url('30.jpeg');
 background-size:cover;
 background-position:center; 
 background-repeat:no-repeat; 
 background-origin: content-box;
 background-attachment: fixed;
  
 ">
   
      <%@ include file="header.jsp" %>
	<!--<h1> Welcome <%=(session.getAttribute("user")!=null) ?((User)session.getAttribute("user")).getUserName():"!!!!!!!!" %></h1>-->

	
   <div style="display:flex; justify-content:end; align-item:end ;margin-top:200px " >
    	
      		<div class="a" style="text-align: center; border; border-radius: 15% 50%; background:#c9ffe5 ;height: 130px; width: 130px;margin-left:220px">
       		<br><a href="prep_recharge_add_form.htm">
       		<h3 style="color:black;">Recharge</a><br>
      		</div>
   		
   		
      		<div class="a" style="text-align: center; border; border-radius: 15% 50%; background:#c9ffe5;height: 130px; width: 130px;margin-left:100px">
  		 	<a href="recharge_Bill.htm">
  		 	<h3 style="color:black;">
  		 	See your Bills</a>
    		</div>
    	
   
</body>
</html>

<% }else{
	
	response.sendRedirect("login_form.jsp");	
	
}
	%>