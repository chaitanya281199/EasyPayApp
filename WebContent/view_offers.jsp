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
    
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

    <!-- Bootstrap CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css" integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
    
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="spr" %>
   
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User offers </title>
<style type="text/css">
  td,th{
      font-size: 27px;
  }
</style>
</head>
<body style="background-color: AliceBlue">
<div class= "container">
 <h4 style="text-align: center;color:brown;font-size: 50px;margin-top:15px;"> See Recharge Offers</h4>
	<table class="table text-center" style="margin-top: 20px">
  <thead class="thead-dark ">
    <tr>
      
      <th scope="col">Plan</th>
      <th scope="col">validity</th>
      <th scope="col">Benefits</th>
       
  <tbody>
  	<% 
		List<AdminAddOffers> clist = (List<AdminAddOffers>)request.getAttribute("offerlist");
		for( AdminAddOffers ofr : clist){
		%>
  
    <tr>  
			<td>
				<%= "Rs. "+ofr.getPlan()%>
			</td>
			<td>
				<%=ofr.getValidity()+"Days" %>
			</td>
			<td>
				<%=ofr.getBenefits()%>
			</td>
		
			
		</tr>
		<% } %>
    
  </tbody>
</table>
 
   </div>

   <div style="text-align: center;">
     <a style=" border: 1px solid black;font-size:30px; padding:6px; background-color:lightgreen" href="prep_recharge_add_form.htm">Back And Recharge</a>
   </div>	
  
</body>
</html>
<% }else{
	
	response.sendRedirect("login_form.jsp");	
	
}
	%>