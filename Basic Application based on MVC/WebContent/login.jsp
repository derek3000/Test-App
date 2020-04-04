<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>   
<body bgcolor="#E6E6FA">
<c:import url="/include/header.jsp"></c:import>



<form action="<%= request.getContextPath()%>/Controller" method="post">
Username: <input type="text" name="username"> <br/>
Password: <input type="password" name="password"><br/>
<input type="hidden" name="action" value="loginSubmit">
<input type="submit" value="Submit">
</form>
<c:import url="/include/footer.jsp"></c:import>