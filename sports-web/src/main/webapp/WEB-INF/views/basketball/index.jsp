<%@ page language="java" contentType="text/html; charset=ISO-8859-1" trimDirectiveWhitespaces="true" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<title>Basketball</title>
</head>
<body class="frsports bball">

<c:set var="navtab" scope="request" value="BASKETBALL"/>
<jsp:include page="/WEB-INF/includes/navbar.jsp"/>

<div class="row clearfix">
	<div class="col-md-8 column">
		<div class="jumbotron">
			<h1>Welcome Basketball Players!</h1>
			<p>
				This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.
			</p>
		</div>
	</div>
	<div class="col-md-4 column">
		<h1>League Stats</h1>
	</div>
</div>

</body>