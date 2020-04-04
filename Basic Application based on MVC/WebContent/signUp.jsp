<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>   
<body bgcolor="#E6E6FA">
<c:import url="/include/header.jsp"></c:import>
Sign up

<jsp:useBean id="user" class="org.studyeasy.beans.User" scope="session"></jsp:useBean>
<form action="aboutMadeConfirm.jsp" method="post">
First Name <input type="text" name="firstName"  required value='<jsp:getProperty property="firstName" name="user"/>'> <br/>
Last Name <input type="text" name="firstName"  required value='<jsp:getProperty property="lastName" name="user"/>'> <br/>
Email <input type="text" name="email"  required value='<jsp:getProperty property="email" name="user"/>'> <br/>
Submit <input type="Submit" value="Submit">

</form>
<c:import url="/include/footer.jsp"></c:import>