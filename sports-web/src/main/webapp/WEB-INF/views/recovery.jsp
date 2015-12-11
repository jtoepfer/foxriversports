<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<title>Password Recovery</title>
</head>
<body class="frsportsbg">

<c:set var="noSearch" scope="request" value="true"/>
<jsp:include page="/WEB-INF/includes/navbar.jsp"/>

<div class="col-md-8 column">
	<div class="panel panel-default">
		<div class="panel-heading">Find Your Account</div>
		<div class="panel-body">
			<p>Email, Phone, Username</p>
			<form role="form" action="<c:url value="recoveraccount.htm"/>" method="post">
				<div class="form-group">
					<input type="text" class="form-control" id="account" placeholder="Email, Phone, Username">
				</div>
				<div class="form-group">
					<button type="submit" class="btn btn-primary">Login</button>&nbsp;or <a href="<c:url value="/register.htm"/>" class="alert-link">Sign up for Fox River Sports</a>
				</div>
				<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
			</form>
		</div>
	</div>
</div>


</body>