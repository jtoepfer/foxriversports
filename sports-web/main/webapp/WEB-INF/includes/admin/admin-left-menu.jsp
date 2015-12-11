<%@ page language="java" contentType="text/html; charset=ISO-8859-1" trimDirectiveWhitespaces="true" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%-- <div class="col-sm-3">
	<div class="sidebar-nav">
		<div class="navbar navbar-default" role="navigation">
			<div class="navbar-header">
				<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".sidebar-navbar-collapse">
					<span class="sr-only">Toggle navigation</span>
           			<span class="icon-bar"></span>
           			<span class="icon-bar"></span>
           			<span class="icon-bar"></span>
				</button>
				<span class="visible-xs navbar-brand">Sidebar menu</span>
			</div>
			<div class="navbar-collapse collapse sidebar-navbar-collapse">
				<ul class="nav navbar-nav">
					<li class="active"><a href="<c:url value="/admin/sports.htm"/>">Sports</a></li>
					<li><a href="<c:url value="/admin/leagues.htm"/>">Leagues</a></li>
					<li><a href="<c:url value="/admin/rules.htm"/>">Rules</a></li>
					<!-- <li><a href="#">Reviews <span class="badge">1,118</span></a></li>  -->
				</ul>
			</div><!--/.nav-collapse -->
		</div>
	</div>
</div> --%>
<div class="col-sm-3 col-md-2 menuleft">
	<ul class="nav nav-sidebar">
		<li <c:if test="${menuitem eq 'CAMPUS'}">class="active"</c:if>><a href="<c:url value="/admin/campus.htm"/>">Campus</a></li>
		<li <c:if test="${menuitem eq 'SPORTS'}">class="active"</c:if>><a href="<c:url value="/admin/sports.htm"/>">Sports</a></li>
		<li <c:if test="${menuitem eq 'LEAGUES'}">class="active"</c:if>><a href="<c:url value="/admin/leagues.htm"/>">Leagues</a></li>
		<li <c:if test="${menuitem eq 'RULES'}">class="active"</c:if>><a href="<c:url value="/admin/rules.htm"/>">Rules</a></li>
	</ul>
</div>