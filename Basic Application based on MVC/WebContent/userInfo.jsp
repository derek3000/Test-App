<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>   
<body bgcolor="#E6E6FA">
<c:import url="/include/header.jsp"></c:import>

<form action= "<%=request.getContextPath() %>/Controller?action=login" method="post">
	Full Name<input type="text" name="name" required > <br/>
	Gender <input type="radio" name="gender" value="male" > Male
	Gender <input type="radio" name="gender" value="female" type="radio" value="checked"> Female <br/>
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

<c:import url="/include/footer.jsp"></c:import>