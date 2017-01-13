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
		Resident resident_array[] = new Resident[list.size()];
		list.toArray(resident_array);
		for(Resident r:resident_array){
			System.out.println("test:"+r.getName()+" "+r.getHostel());
		}
    %>
   <div style="height:100vh">
	<h1 class="blue-text" style="text-align:center;margin-bottom:10px">'<%=search %>' returned <%=size %> results.</h1>
	
	<div class="container">	
	<%	
		if(size!=0){
	%>
		<div class="jumbotron" style="width:70%;margin:auto">
	<%
   		while(i.hasNext()) {
	   		Resident r = (Resident)i.next();
   	%>
	
 		<div class="media" style="padding:5px;" >
        	<a class="media-left waves-light">
            	<img class="rounded-circle" src="controller.GetPhoto?image=<%=r.getImage() %>" style="width:50px;height:50px;object-fit:cover;margin:0px 4px 10px 4px;">
        	</a>
        	<div class="media-body">
            	<h4 class="media-heading"><%=r.getName() %></h4>
            	<p class="float-md-left"><strong class="blue-text ">HOSTEL:</strong> <%=r.getHostel() %></p>
            	<p class="float-md-right"><strong class="blue-text ">ROOM:</strong> <%=r.getRoom() %></p>
        	</div>
    	</div>
    	<%if(i.hasNext()){ %>
    	<hr class="my-1">
    	<%} %>
	<%} %>
		</div>
		<%} %>
		
	<%
		if(size>4) {
	%>	
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
<%} %>		
		
			
	</div>
</div>