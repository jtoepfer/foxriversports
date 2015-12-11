<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
	<title>Search</title>
</head>
<body class="frsportsbg">

<%-- <jsp:include page="/WEB-INF/includes/navbar.jsp"/> --%>

<c:set var="noSearch" scope="request" value="true"/>
<sitemesh:decorate decorator='/WEB-INF/includes/navbar.jsp'>

<form class="form-horizontal" role="form" action="<c:url value="/search.htm"/>" method="post">
<div class="clearfix">
	<div class="form-group pull-left" style="width:80%">
		<label for="search" class="col-sm-2 control-label">Search:</label>
		<div class="col-sm-8">
			<input type="text" name="search" class="form-control" id="search" />
		</div>
	</div>
	<div class="form-group pull-left">
		<div class="col-sm-offset-2 col-sm-10">
			 <button type="submit" class="btn btn-default">Search</button>
		</div>
	</div>
</div>
</form>

<div class="list-group">
	<a href="#" class="list-group-item active">Home</a>
	<div class="list-group-item">Search Results</div>
	<div class="list-group-item">
		<h4 class="list-group-item-heading">List group item heading</h4>
		<p class="list-group-item-text">
						...
		</p>
	</div>
	<div class="list-group-item">
		<span class="badge">14</span>Help
	</div>
	<a class="list-group-item active"><span class="badge">14</span>Help</a>
</div>

<ul class="pagination">
	<li><a href="#">Prev</a></li>
	<li><a href="#">1</a></li>
	<li><a href="#">2</a></li>
	<li><a href="#">3</a></li>
	<li><a href="#">4</a></li>
	<li><a href="#">5</a></li>
	<li><a href="#">Next</a></li>
</ul>

</sitemesh:decorate>

</body>
