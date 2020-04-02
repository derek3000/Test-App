<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Login</title>
</head>
<body bgcolor="#E6E6FA">
<form action= "submit.jsp" method="post">
	Full Name<input type="text" name="name"> <br/>
	Gender <input type="radio" name="gender" value="male"> Male
	Gender <input type="radio" name="gender" value="female"> Female <br/>
	Languages known: <input type="checkbox" name="language" value="English"> English
					 <input type="checkbox" name="language" value="Hindi"> Hindi
					 <input type="checkbox" name="language" value="French"> French <br/>
	Country <select name="country">
			<option value="india"> India</option>
			<option value="USA"> USA</option>
			<option value="UK"> UK</option>
			<option value="Finland"> Finland</option>
			<option value="Japan"> Japan</option>	
			</select><br/>
			
			<input type="submit" value="Submit">


</form>


</body>
</html>