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
<title>See Status</title>
<style>
	.d{
		box-shadow: 5px 5px 2px black;
		border-radius: 20px;
		background:green;	
		opacity: 0.7;
		font-size: 24px;
	}
	.d:hover {
	opacity: 1.0;
	
}
</style>
</head>
<body style="background-image: url('38.jpeg');
 background-size:cover;
 background-position:center; 
 background-repeat:no-repeat; 
 background-origin: content-box;
 background-attachment: fixed;"
  >
   <div style="text-align: center;">
   
   <h1 style="color:purple;margin-top: 30px">Thank You !!! </h1>
   
   <h2 style="font-family: cursive; color:orange;">Your recharge is Successfull !!!</h2>
   
   <h2> Quote for Today!!!</h2>
   <h4 style="color:brown; font-size: 20px">
  " Optimism is a happiness magnet. If you stay positive good things and good people will be drawn to you."
 </h4>
   
   
   <a class="d" style="font-size: 20px;font-family: cursive;border: 2px solid black;padding: 10px;"href="home.jsp">Back</a>
   </div>
</body>
</html>
<% }else{
	
	response.sendRedirect("login_form.jsp");	
	
}
	%>