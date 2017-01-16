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
	<h1 id='search-msg' class="blue-text" style="text-align:center;margin-bottom:10px"></h1>
	
	<div id='search-results' class="container">	
	</div>
			
	
	<div id="navigation-div" class="container" style="position:absolute;bottom:10px;width:100%">	
	<nav style="width:70%;text-align:center;margin:20px auto">
  	<ul class="pagination pagination-lg" >
  
  	</ul>
	</nav>
</div>

	
</div>