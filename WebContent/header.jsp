<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@page import="com.cdac.dto.User"%>
<!DOCTYPE html>
<html>
<head>

<style>
ul {
  list-style-type: none;
  margin: 0;
  padding: 0;
  overflow: hidden;
  background-color: #333;
  border-radius: 5px;
}

li {
  float: left;
}

li a {
  display: block;
  color: white;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
}

li a:hover:not(.active) {

  background-color: #111;
   border-radius: 10px;
 }

.active {
  background-color: #4CAF50;
  border-radius: 6px;
  margin-top: 3px;
}
h3{
   font-size: 28px;
}

</style>
<meta charset="ISO-8859-1">
<title>Header Page</title>
</head>
<body>
  
 <ul>
  <li style="color: white; margin-right: 25px;margin-left: 25px;"><h1>Easy Pay</h1></li>
  
  <li><h3 style="color: white;float:right;"> Welcome <%=(session.getAttribute("user")!=null) ?((User)session.getAttribute("user")).getUserName():"   " %> !!!</h3></li>
  <li style="float:right"><h3><a style="font-size: 28px;"class="active" href="logout.htm">Logout</a></h3></li>
  <li style="float:right"><h3><a style="font-size: 28px;" href="prep_recharge_add_form.htm">Recharge</a></h3></li>
  <li style="float:right"><h3><a style="font-size: 28px;" href="view_offer.htm">Offers</a></h3></li>
  
</ul>
 
</body>
</html>