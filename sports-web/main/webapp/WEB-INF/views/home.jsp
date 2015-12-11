<%@ page language="java" contentType="text/html; charset=ISO-8859-1" trimDirectiveWhitespaces="true" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
	<title>Fox River Sports - Home</title>
</head>
<body class="frsportsbg">

<div class="row clearfix">
	<div class="col-md-12 column">
		<c:set var="navtab" scope="request" value=""/>
		<jsp:include page="/WEB-INF/includes/navbar.jsp"/>
		<div class="row clearfix">
			<div class="col-md-8 column">
				<div class="jumbotron">
					<h1>
						Hello, world!
					</h1>
					<p>
						This is a template for a simple marketing or informational website. It includes a large callout called the hero unit and three supporting pieces of content. Use it as a starting point to create something more unique.
					</p>
					<p>
						<a class="btn btn-primary btn-large" href="#">Learn more</a>
					</p>
				</div>
			</div>
			<div class="col-md-4 column">
			</div>
		</div>
	</div>
</div>

</body>