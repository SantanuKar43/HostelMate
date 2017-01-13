<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%String search = request.getParameter("search"); %>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <meta http-equiv="x-ua-compatible" content="ie=edge">

    <title>HostelMate</title>

    <!-- Font Awesome -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/font-awesome/4.6.0/css/font-awesome.min.css">

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Material Design Bootstrap -->
    <link href="css/mdb.min.css" rel="stylesheet">

    <!-- Your custom styles (optional) -->
    <link href="css/style.css" rel="stylesheet">

</head>

<body>


<!--Navbar-->
<nav class="navbar navbar-light ">

    <!-- Collapse button-->
    <button class="navbar-toggler hidden-sm-up" type="button" data-toggle="collapse" data-target="#collapseEx2">
        <i class="fa fa-bars"></i>
    </button>

    <div class="container">

        <!--Collapse content-->
        <div class="collapse navbar-toggleable-xs" id="collapseEx2">
            <!--Navbar Brand-->
            <a class="navbar-brand" href="index.jsp"><i class="fa fa-building-o"></i> HostelMate</a>
            <form class="form-inline" id="search-form">
            	<div class="md-form">
            		<i class="fa fa-search prefix" style="color:black"></i>
                	<input style="width:100%" required class="form-control" id='search-input' name="search" type="text" placeholder="Search" value=<%=search %>>
            	</div>
            </form>
        </div>
        <!--/.Collapse content-->

    </div>

</nav>
<!--/.Navbar-->

    