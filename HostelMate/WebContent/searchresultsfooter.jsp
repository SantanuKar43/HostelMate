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
                <p>It's an application to find hostellers at CET-B</p>
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
        <div class="call-to-action">
        <ul >
            <li>
                <h5>Make it easy for others to find you!</h5></li>
            <li><a href="signup.jsp" class="btn btn-danger">Sign up!</a></li>OR
            <li><a href="signin.jsp" class="btn btn-primary">Edit Your Profile</a></li>
        </ul>
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
		var search;
		var index;
		var ajaxGetResults = function(){
			search = $('#search-input').val();
			index = 0;
			if($.trim(search).length===0){
				search=" ";
			}
			if(search){
				$.ajax({url:'controller.Search?search='+search+'&index='+index,success:function(result){
					$('#search-results').html(result);
				}});
			}
		};
		var ajaxGetMsg = function(){
			search = $('#search-input').val();
			if($.trim(search).length===0){
				search=" ";
			}
			if(search){	
				$.ajax({url:'controller.SearchMsg?search='+search,success:function(result){
					$('#search-msg').html(result);
				}});
			}
		}
		$(document).ready(function(){
			$('#search-form').submit(function(e){
				$('#search-input').blur();
				e.preventDefault();
				
			});
			ajaxGetMsg();
			ajaxGetResults();
			$('#search-input').keyup(function(){
				ajaxGetMsg();
				ajaxGetResults();
			});	
			
			$('.index').click(function(){
				if(!$(this).parent().hasClass('active')){
					alert('chicken');
					$('.active').removeClass('active');
					$(this).parent().addClass('active');
				}
			})
		});
		
		
	</script>
	
</body>

</html>