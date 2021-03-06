<%@page import="dao.ResidentDao"%>
<%@page import="db.Resident"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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

<%
	String regd_no = (String)session.getAttribute("regd_no");
	Resident r = ResidentDao.getResident(regd_no);
%>
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
            <a class="navbar-brand" href="#"><i class="fa fa-building-o"></i> HostelMate</a>
           	<div class="float-md-right">
           		<img id="photo-account" class="rounded-circle" style="width:35px;height:35px;margin-right:5px;object-fit:cover" src="controller.GetPhoto?image=<%=r.getImage()%>">
           		<a id="user-name"><%=r.getName() %></a>
           		<a id="logout-btn" style="margin-left:20px" href="controller.LogOut" class="btn btn-primary btn-sm"><i class="fa fa-sign-out"></i> Log out</a>
           	</div>
        </div>
        <!--/.Collapse content-->

    </div>

</nav>
<!--/.Navbar-->