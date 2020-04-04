<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>   
<body bgcolor="#E6E6FA">
<c:import url="/include/header.jsp"></c:import>

	It's Homepage <br/>
	<a href="<c:url value="/login.jsp"/>">Login</a> <br/>
	<a href="<c:url value= "/signUp.jsp"/>"> Sign up</a> <br/>
	<a href="<c:url value="/about.jsp"/>">About</a> <br/>

<c:import url="/include/footer.jsp"></c:import>