<%@page import="dao.ResidentDao"%>
<%@page import="db.Resident"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<div style="height:100vh">

<div class="container">
	<%	String msg=request.getParameter("msg");
		if(msg!=null){
	%>
	<p style="width:40%;margin:auto;text-align:center" class="text-danger">Error: <%=msg %></p>
	<%} %>
	<%
		String regd_no = (String)session.getAttribute("regd_no");
		Resident r = ResidentDao.getResident(regd_no);
	%>

<!--Form without header-->
<div class="card" style="width:40%;margin:5px auto">
    <div class="card-block">

        <!--Header-->
        <div class="text-xs-center">
            <h3><i class="fa fa-pencil"></i> Edit Your Profile:</h3>
            <hr class="mt-2 mb-2">
        </div>

        <!--Body-->
        
        <div class="md-form">
        	<form id="photo-form" method="post" enctype="multipart/form-data">
				<ul class="md-form" style="list-style:none">
					<input id="photo-file" type="file" value="Choose Photo" name="file" size="50">
					<button type="submit" class="btn btn-default btn-sm float-xs-right"><i class="fa fa-upload" aria-hidden="true"></i> upload Photo</button>
				</ul>
			</form>
        </div>
    	<form id="profile-form" method="post">
        <div class="md-form">
            <input type="text" name="name" value="<%=r.getName() %>" class="form-control" placeholder="Name" required>
            <label for="name"></label>
        </div>
        
        <div class="md-form">
            <select name="hostel" class="form-control" required>
            	<option disabled style="display:none" selected value="">Hostel</option>
            	<option>KCHR</option>
            	<option>RHR</option>
            </select>
            <label for="branch"></label>
        </div>
        
         <div class="md-form">
            <input type="number" name="room" class="form-control" value="<%=r.getRoom() %>" placeholder="Room number" required>
            <label for="room"></label>
        </div>

        <div class="text-xs-center">
            <button class="btn btn-deep-purple" type="submit">Update Profile</button>
        </div>
		</form>
    </div>

    

</div>
<!--/Form without header-->
</div>


</div>