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
			
	<%
		if(size>4) {
	%>
	<div class="container">	
<nav style="width:70%;text-align:center;margin:20px auto">
  <ul class="pagination pagination-lg" >
    <li class="page-item disabled">
      <a class="page-link" href="#" aria-label="Previous">
        <span aria-hidden="true">&laquo;</span>
        <span class="sr-only">Previous</span>
      </a>
    </li>
    <li class="page-item active"><a class="page-link" href="#">1</a></li>
    <li class="page-item"><a class="page-link" href="#">2</a></li>
    <li class="page-item"><a class="page-link" href="#">3</a></li>
    <li class="page-item"><a class="page-link" href="#">4</a></li>
    <li class="page-item"><a class="page-link" href="#">5</a></li>
    <li class="page-item">
      <a class="page-link" href="#" aria-label="Next">
        <span aria-hidden="true">&raquo;</span>
        <span class="sr-only">Next</span>
      </a>
    </li>
  </ul>
</nav>
</div>
<%} %>	
	
</div>