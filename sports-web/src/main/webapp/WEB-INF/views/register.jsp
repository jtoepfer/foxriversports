<%@ page language="java" contentType="text/html; charset=ISO-8859-1" trimDirectiveWhitespaces="true" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<title>Fox River Sports - Registration</title>
<style type="text/css">

</style>
</head>
<body>
Information needed to register on the Fox River Sport page.

<div class="row">
	<div class="col-md-6">
		<form role="form" action="<c:url value="processregistration.htm"/>" method="post">
			<div class="form-group">
				<label for="firstName">First Name*</label>
				<input type="text" class="form-control" id="firstName" placeholder="First Name">
			</div>
			<div class="form-group">
				<label for="lastName">Last Name*</label>
				<input type="text" class="form-control" id="lastName" placeholder="Last Name">
			</div>
			<div class="form-group">
				<label for="emailaddress">Email address*</label>
				<input type="email" class="form-control" id="emailaddress" placeholder="Enter email">
			</div>
			<button type="submit" class="btn btn-default">Submit</button>
		</form>
	</div>
	<div class="col-md-6">
		<dl>
			<dt>So What Does Registration Give Me</dt>
			<dd>...</dd>
		</dl>
	</div>
</div>

</body>
