<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>   
<body bgcolor="#E6E6FA">
<c:import url="/include/header.jsp"></c:import>

<%
String username = null, sessionID = null;
	if(request.getSession().getAttribute("username") == null){
		response.sendRedirect(request.getContextPath()+"/Controller?action=login");
	}else{
		username = request.getSession().getAttribute("username").toString();
		sessionID = request.getSession().getId();
	}

%>
Username:	<%=username%>
	<br /> 
 Current session:	<%=sessionID%>
	<br /> Thanks for being a member
	<form action="<%= request.getContextPath()%>/MemberAreaController" method= "get">
	<input type="hidden" name="action" value="destory">
	<input type="submit" value="Logout">
	
	</form>

<c:import url="/include/footer.jsp"></c:import>