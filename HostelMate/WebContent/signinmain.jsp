<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<div style="height:100vh">

<div class="container">
	<%	String msg=request.getParameter("msg");
		if(msg!=null){
	%>
	<p style="width:40%;margin:auto;text-align:center" class="text-danger">Error: <%=msg %></p>
	<%} %>
<form action="controller.SignUp" method="post">
<!--Form without header-->
<div class="card" style="width:40%;margin:25px auto">
    <div class="card-block">

        <!--Header-->
        <div class="text-xs-center">
            <h3><i class="fa fa-lock"></i>Log In:</h3>
            <hr class="mt-2 mb-2">
        </div>

        <!--Body-->
    	<div class="md-form">
            <input type="number" name="regd_no" class="form-control" placeholder="Registration number" required>
            <label for="regd_no"></label>
        </div>
        
        <div class="md-form">
            <input type="password" name="pwd" class="form-control" placeholder="Password" required>
            <label for="pwd"></label>
        </div>
        
        
        <div class="text-xs-center">
            <button class="btn btn-deep-purple" type="submit">Log In</button>
        </div>

    </div>

    <!--Footer-->
    <div class="modal-footer">
        <div class="options">
            <p>Not registered yet? <a href="signup.jsp">Sign Up</a></p>
            
        </div>
    </div>

</div>
<!--/Form without header-->
</form>
</div>


</div>