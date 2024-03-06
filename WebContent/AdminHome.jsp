<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Admin Home Page</title>
<style >
	.a{
	opacity: 0.5;
box-shadow: 10px 10px 5px black;
	}
	.a:hover {
	opacity: 1.0;
}
h1{
  font-size: 120px;
  font-family: sans-serif cursive;
}
a{
  font-size: 30px;
}
</style>
</head>
<body style="background-image: url('');
 background-size:cover;
 background-position:center; 
 background-repeat:no-repeat; 
 background-origin: content-box;
 background-attachment: fixed;
  background-color: black;
 ">
  <h1 style="color:#F1C40F;text-align: center;">Welcome Admin</h1>
    <div style="display:flex; justify-content:end; align-item:end ;margin-top:120px " >
   <div class="a" style="text-align: center; border; border-radius: 50px 5px;
    background:#F1C40F ;height: 150px; width: 150px;margin-left:320px">
       		<br>
       		<a href="Prep_AddOffer_form.htm">
       		<h3 style="color:black;">Add Offers</a><br>
      		</div>
   		
   		
      		<div class="a" style="text-align: center; border; border-radius: 5px ; background:	#F1C40F ;height: 150px; width: 150px;margin-left:120px">
  		 	<br><a href="view_offer_admin.htm">
  		 	<h3 style="color:black;">
  		 	View Offers</a><br>
    		</div>
    		
    		<div class="a" style="text-align: center; border; border-radius: 5px 50px; background:	#F1C40F ;height: 150px; width: 150px;margin-left:120px">
  		 	<br> <br><a href="index.jsp" >Back</a>
  		 	<h3 style="color:black;">
  		 	<br>
    		</div>
    		
         
   </div>
</body>
</html>