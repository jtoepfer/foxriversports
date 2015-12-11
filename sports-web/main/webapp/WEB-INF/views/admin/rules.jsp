<%@ page language="java" contentType="text/html; charset=ISO-8859-1" trimDirectiveWhitespaces="true" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
	<title>Administration</title>
</head>
<body>

<div class="row clearfix">

	<c:set var="admintab" scope="request" value="LEAGUE_RULES"/>
	<jsp:include page="/WEB-INF/includes/admin/admin-menu.jsp"/>

	<div class="col-md-8 column">
		<div class="panel panel-default">
			<div class="panel-heading">Panel heading without title</div>
			<div class="panel-body">Panel content</div>
		</div>
	</div>

</div>
</body>
