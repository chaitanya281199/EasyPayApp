<%@page import="com.cdac.dto.AdminAddOffers"%>
<%@page import="java.util.List"%>
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

<title>Admin Offer Page</title>
 <style>
 
   th{
      font-size: 30px;
   }
   td{
      font-size: 23px;
   }
   a{
     font-size: 30px;
   
   }
   h1{
      color:brown;
      font-size: 50px;
      text-align: center;
   }
 
 </style>
</head>
<body style="background-color:#E6E4E4">
<div class= "container">
    <h1>Offer List !!!</h1>
	<table class="table text-center">
  <thead class="thead-dark ">
    <tr>
      <th scope="col">Plan</th>
      <th scope="col">validity</th>
      <th scope="col">Benefits</th>
      <th scope="col">Update</th>
      <th scope="col">Delete</th>
  <tbody>
  	<% 
		List<AdminAddOffers> clist = (List<AdminAddOffers>)request.getAttribute("offerlist");
		for( AdminAddOffers ofr : clist){
		%>
  
    <tr>  
			<td>
				<%="Rs." + ofr.getPlan()%>
			</td>
			<td>
				<%=ofr.getValidity() +" Days"%>
			</td>
			<td>
				<%=ofr.getBenefits()%>
			</td>
			
			<td>
				<a href="offer_delete.htm?offerId=<%=ofr.getOfferId()%>">Delete</a>
			</td>
			<td>
				<a href="offer_update.htm?offerId=<%=ofr.getOfferId()%>">Update</a>
			</td>
			
			
		</tr>
		<% } %>
       
  </tbody>
</table>
 
</div>	
  <div style="text-align: center;">
     <a href="AdminHome.jsp">Back Home</a>
  </div>
</body>
</html>