<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>   
<body bgcolor="#E6E6FA">
<c:import url="/include/header.jsp"></c:import>
Name: <%= request.getParameter("name") %> <br/>
Gender: <%= request.getParameter("gender") %> <br/>
Language known: <% 
String[] countries = request.getParameterValues("language");
if(countries != null){
	for(int i=0; i<countries.length;i++){
		out.print("<br/>");
		out.print(countries[i]);
		
	}
}else{
	out.print("None selected");
}

%> <br/>

Country: <%= request.getParameter("country") %><br/>
<c:import url="/include/footer.jsp"></c:import>