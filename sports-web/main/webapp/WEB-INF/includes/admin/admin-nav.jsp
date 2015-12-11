<%@ page language="java" contentType="text/html; charset=ISO-8859-1" trimDirectiveWhitespaces="true" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<nav class="navbar navbar-default navbar-fixed-top" role="navigation">
  <div class="container-fluid">
	<!-- Brand and toggle get grouped for better mobile display -->
	<div class="navbar-header">
		<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
			<span class="icon-bar"></span>
		</button>
		<a class="navbar-brand" href="<c:out value="/foxriversports/home.htm"/>"><span class="glyphicon glyphicon-home"></span></a>
	</div>
	<!-- Collect the nav links, forms, and other content for toggling -->
	<div class="collapse navbar-collapse pull-right" id="navbar-collapse">
		<ul class="nav navbar-nav">
			<li class="dropdown">
				<a href="#" class="dropdown-toggle" data-toggle="dropdown">
					<span class="glyphicon glyphicon-th "></span><span class="caret"></span>
				</a>
				<ul class="dropdown-menu pull-right" role="menu">
					<li><a href="<c:url value="/admin/sports.htm"/>">
						<span class="glyphicon glyphicon-list-alt"></span>&nbsp;Sport Leagues</a></li>
					<li class="divider"></li>
					<li><a href="<c:url value="/admin/users.htm"/>">
						<span class="glyphicon glyphicon-user"></span>&nbsp;User Administration</a></li>
					<li><a href="<c:url value="/admin/notify.htm"/>">
						<span class="glyphicon glyphicon-bell"></span>&nbsp;Notifications</a></li>
					<li class="divider"></li>
					<li><a href="<c:url value="/admin/system.htm"/>">
						<span class="glyphicon glyphicon-cog"></span>&nbsp;System</a></li>
					<li class="divider"></li>
					<li><a href="#"><span class="glyphicon glyphicon-log-out"></span>&nbsp;Logout</a></li>
				</ul>
			</li>
		</ul>
	</div>
  </div>
</nav>