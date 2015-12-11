<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!-- Navigation bar -->
<nav id="sports-nav" class="navbar navbar-default" role="navigation">
	<div class="container-fluid">
		<!-- Brand and toggle get grouped for better mobile display -->
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
				<span class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="<c:out value="/foxriversports/"/>"><!--<span class="foxriversports-logo"></span>-->Fox River Sports</a>
		</div>

		<!-- Collect the nav links, forms, and other content for toggling -->
		<div class="collapse navbar-collapse" id="navbar-collapse">
			<ul class="nav navbar-nav">
				<li class="dropdown <c:if test="${navtab eq 'BASKETBALL'}">active</c:if>">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Basketball<span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="<c:url value="/basketball.htm?eventId="/>">Fall League</a></li>
						<li><a href="<c:url value="/basketball.htm?eventId="/>">Winter League</a></li>
						<li><a href="<c:url value="/basketball.htm?eventId="/>">Summer Open Gyms</a></li>
					</ul>
				</li>
				<li class="<c:if test="${navtab eq 'GOLF'}">active</c:if>">
					<a href="<c:url value="/golf.htm"/>">Golf</a>
				</li>
				<li class="<c:if test="${navtab eq 'SOFTBALL'}">active</c:if>">
					<a href="<c:url value="/softball.htm"/>">Softball</a>
				</li>
				<li class="dropdown <c:if test="${navtab eq 'VOLLEYBALL'}">active</c:if>">
					<a href="#" class="dropdown-toggle" data-toggle="dropdown">Volleyball<span class="caret"></span></a>
					<ul class="dropdown-menu" role="menu">
						<li><a href="<c:url value="/volleyball.htm?eventId="/>">Fall League</a></li>
						<li class="divider"></li>
						<li><a href="<c:url value="/volleyball.htm?eventId="/>">Winter League</a></li>
					</ul>
				</li>
			</ul>
			<c:if test="${not noSearch}">
			<form class="navbar-form navbar-right" role="search" action="<c:url value="/foxriversports/search.htm"/>" method="post">
				<div class="form-group">
					<input type="text" name="search" class="form-control" placeholder="Search">
				</div>
				<button type="submit" class="btn btn-default">Submit</button>
			</form>
			</c:if>
		</div>
	</div>
	<c:choose>
		<c:when test="${navtab eq 'BASKETBALL'}">
			<jsp:include page="/WEB-INF/includes/subnav/basketball.jsp"/>
		</c:when>
		<c:when test="${navtab eq 'VOLLEYBALL'}">
			<jsp:include page="/WEB-INF/includes/subnav/volleyball.jsp"/>
		</c:when>
	</c:choose>
</nav>
