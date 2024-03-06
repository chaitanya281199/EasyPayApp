<%@page import="com.cdac.dto.Recharge"%>
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

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Show Bills</title>
<style>
   td,th{
      font-size: 27px;
  }
</style>
</head>
<body style="background-color:aliceblue">

  <h3 style="text-align: center;color:brown;font-size: 40px">See Your Bills !!!</h3>
    
    <div class= "container" style="margin-top: 30px;">
	<table class="table text-center">
  <thead class="thead-dark ">
    <tr>
      
      <th scope="col">Mobile No</th>
      <th scope="col">Amount Paid</th>
      <th scope="col">Delete</th>
      
  <tbody>
  	<% 
		List<Recharge> clist = (List<Recharge>)request.getAttribute("rechList");
		for( Recharge rech : clist){
		%>
  
    <tr>  
			<td>
				<%= rech.getMobNo()%>
			</td>
			<td>
				<%=rech.getAmount() %>
			</td>
			<td>
				<a href="bill_delete.htm?transactionId=<%=rech.getTransactionId()%>">Delete</a>
			</td>
			
			
			
		</tr>
		<% } %>
    
  </tbody>
</table>
 
   </div>

   <div style="text-align: center; color:green; font-size:35px;">
     <a style="border: 1px solid black;color:white ;padding: 3px;background-color:tomato;" href="home.jsp">Back</a>
   </div>	
  
</body>
</html>
<% }else{
	
	response.sendRedirect("login_form.jsp");	
	
}
	%>