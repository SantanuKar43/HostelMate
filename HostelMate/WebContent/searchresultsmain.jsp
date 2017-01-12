<%@page import="db.Resident"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="dao.ResidentDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%
    	String search = request.getParameter("search");
		List list = ResidentDao.getResidents(search);
		Iterator i = list.iterator();
		int size = list.size();
    %>
   <div style="height:100vh">
	<h1 class="blue-text" style="text-align:center">'<%=search %>' returned <%=size %> results.</h1>
	
	<div class="container">	
		<div class="jumbotron">
	<%
   		while(i.hasNext()) {
	   		Resident r = (Resident)i.next();
	   		System.out.println(r.getName());
   	%>
	
 		<div class="media" style="padding:5px" >
        	<a class="media-left waves-light">
            	<img class="rounded-circle" src="controller.GetPhoto?image=<%=r.getImage() %>" style="width:50px;height:50px;object-fit:cover;margin:0px 4px 10px 4px;">
        	</a>
        	<div class="media-body">
            	<h4 class="media-heading"><%=r.getName() %></h4>
            	<p><strong class="blue-text">HOSTEL:</strong> <%=r.getHostel() %></p>
        	</div>
    	</div>
    	<%if(i.hasNext()){ %>
    	<hr class="my-1">
    	<%} %>
	<%} %>
		</div>
	</div>
</div>