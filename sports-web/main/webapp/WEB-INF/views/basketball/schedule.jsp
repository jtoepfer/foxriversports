<%@ page language="java" contentType="text/html; charset=ISO-8859-1" trimDirectiveWhitespaces="true" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<title>Basketball League Schedule</title>
</head>
<body class="frsports bball">

<c:set var="navtab" scope="request" value="BASKETBALL"/>
<c:set var="subnavtab" scope="request" value="SCHEDULE"/>
<jsp:include page="/WEB-INF/includes/navbar.jsp"/>

	<div class="row">
		<div class="col-md-8">
			<span>01/12/2015</span>

			<div class="row">
				<div class="col-md-1">6:15 pm</div>
				<div class="col-md-5">Team 4 @ Team 8</div>
				<div class="col-md-2">Stats</div>
			</div>
			<div class="row">
				<div class="col-md-1">7:15 pm</div>
				<div class="col-md-5">Team 1 @ Team 2</div>
				<div class="col-md-2">Stats</div>
			</div>
			<div class="row">
				<div class="col-md-1">8:15 pm</div>
				<div class="col-md-5">Team 5 @ Team 3</div>
				<div class="col-md-2">Stats</div>
			</div>
			<div class="row">
				<div class="col-md-1">9:15 pm</div>
				<div class="col-md-5">Team 7 @ Team 6</div>
				<div class="col-md-2">Stats</div>
			</div>
		</div>
	</div>
	
	<div class="row">
		<div class="col-md-8">
			<span>February</span>
			
			<div class="row">
			</div>
		</div>
	</div>

</body>
