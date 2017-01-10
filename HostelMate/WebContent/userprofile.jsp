<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%	
    	String regd_no = (String)session.getAttribute("regd_no");
    	if(regd_no==null) {
    		response.sendRedirect("signin.jsp?msg=Log in to continue");
    	}
    %>
<jsp:include page="userprofileheader.jsp"></jsp:include>
<jsp:include page="userprofilemain.jsp"></jsp:include>
<jsp:include page="signupfooter.jsp"></jsp:include>