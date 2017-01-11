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
	
 		<div class="media">
        	<a class="media-left waves-light">
            	<img class="rounded-circle" src="http://mdbootstrap.com/img/Photos/Avatars/avatar-13.jpg" style="margin:0px 4px 10px 4px;">
        	</a>
        	<div class="media-body">
            	<h4 class="media-heading"><%=r.getName() %></h4>
            	<p>Lorem ipsum dolor sit amet, consectetur adipisicing elit. Nisi cupiditate temporibus iure soluta. Quasi mollitia maxime nemo quam accusamus possimus, voluptatum expedita assumenda. Earum sit id ullam eum vel delectus!</p>
        	</div>
    	</div>
    	<%if(i.hasNext()){ %>
    	<hr class="my-2">
    	<%} %>
	<%} %>
		</div>
	</div>
</div>