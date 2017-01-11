<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>

<!--Footer-->
<footer class="page-footer center-on-small-only">

    <!--Footer Links-->
    <div class="container">
        <div class="row">

            <!--First column-->
            <div class="col-md-6">
                <h5 class="title">About HostelMate</h5>
                <p>It's an application to help you find people at your hostel in CET-B</p>
            </div>
            <!--/.First column-->

            <!--Second column-->
            <div class="col-md-6">
                <h5 class="title">About Us</h5>
                <ul>
                    <li><a href="#!">Santanu Kar</a></li>
                    <li><a href="#!">Sanskriti Mohapatra</a></li>
                </ul>
            </div>
            <!--/.Second column-->
        </div>
       
    </div>
    <!--/.Footer Links-->

    <!--Copyright-->
    <div class="footer-copyright">
        <div class="container-fluid">
            © 2017 Copyright: <a href="#"> Sansani.com</a>

        </div>
    </div>
    <!--/.Copyright-->

</footer>
<!--/.Footer-->



    <!-- SCRIPTS -->

    <!-- JQuery -->
    <script type="text/javascript" src="js/jquery-3.1.1.min.js"></script>

    <!-- Bootstrap tooltips -->
    <script type="text/javascript" src="js/tether.min.js"></script>

    <!-- Bootstrap core JavaScript -->
    <script type="text/javascript" src="js/bootstrap.min.js"></script>

    <!-- MDB core JavaScript -->
    <script type="text/javascript" src="js/mdb.min.js"></script>
	
	<script>
		$(document).ready(function(){
			$('#user-name').click(function(){
				$('#logout-btn').fadeToggle();
			});
		});
	</script>
	
</body>

</html>