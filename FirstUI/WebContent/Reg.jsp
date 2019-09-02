<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Registration </title>
<link rel="stylesheet" type="text/css" href="./script/reg.css">
<script src="./script/jquery-3.3.1.js"></script>
<script type="text/javascript" src="./script/my.js">

</script>
</head>
<body>
<div id="main">


<div id="headercls">
				<header>
				<h1><b>BSS Software Pvt. Ltd</b></h1>
				</header>
</div>

<div id="navbar">
<nav>
								
								<a href="login.html">Home</a> 
								<a href="aboutus.jsp">about us</a> 
								<a href="service.jsp">Service</a> 
								<a href="contactus.jsp">Contact Us</a>
</nav>

</div>
<div id="container">
				<div id="leftsidebar">
<p>
India never invaded any country in her last 100000 years of history.
When many cultures were only nomadic forest dwellers over 5000 years ago, Indians established Harappan culture in Sindhu Valley (Indus Valley Civilization)
The name 'India' is derived from the River Indus, the valleys around which were the home of the early settlers. The Aryan worshippers referred to the river Indus as the Sindhu.
The Persian invaders converted it into Hindu. The name 'Hindustan' combines Sindhu and Hindu and thus refers to the land of the Hindus.
Chess was invented in India.
</p>
				</div>
				<div id="righsidebar">
		<form action="/FirstUI/loginServlet" onsubmit="validate()">	
		<div id="loginform">
		  <b id="title">***Registration***</b>		
				<table>
								  <tr>
								    <td><b>Name:</b></td>
								    <td><input id="form_name" type="text"  height="60px" name="name"></td>
								    <td> <span id="name_error" > </span></td>
								  </tr>
								  <tr>
								    <td><b>Email-id:</b></td>
								    <td><input id="form_email" type="text"  height="60px" name="email"></td>
								    <td> <span id="email_error" > </span></td>
								    
								  </tr>
								  <tr>
								    <td><b>Mobile No:</b></td>
								    <td><input id="form_mno" type="text"  height="60px" name="mobno" maxlength="10"></td>
								    <td> <span id="mno_error" > </span></td>
								  </tr>
								  <tr>
								    <td><b>Password:</b></td>
								    <td><input id="form_password" type="password"  height="60px" name="password"></td>
								    <td> <span id="password_error" > </span></td>
								  </tr>
								  <tr>
								    <td><b>Confirm password:</b></td>
								    <td><input  id="form_cpassword" type="password"  height="60px" name="confirmedpassword"></td>
								    <td> <span id="cpassword_error" > hi </span></td>
								  </tr>			  
		           </table>
						<div id="button">			
								<input type="submit" id="button1" value="submit "><input type="button" value="Cancel">	
					</div>		  
								
</div>
</form>					
			</div>
</div>

<div id="footercls">
<footer>
<nav>
								<a href="login.html">Home</a> 
								<a href="aboutus.jsp">about us</a> 
								<a href="service.jsp">Service</a> 
								<a href="contactus.jsp">Contact Us</a>
</nav>
<p>Posted by:sandip</p>
  <p>Contact information: <a href="mailto:someone@example.com">
  someone@example.com</a>.</p>
</footer>
</div>
</div>
</body>
</html>