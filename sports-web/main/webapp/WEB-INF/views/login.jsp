<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<title>Sign In</title>
</head>
<body class="frsportsbg">

<c:set var="noSearch" scope="request" value="true"/>
<jsp:include page="/WEB-INF/includes/navbar.jsp"/>

<div class="container-fluid login_page center-block clearfix">
<c:if test="${param['error']}">
<div class="alert alert-dismissable alert-warning">
	<button type="button" class="close" data-dismiss="alert" aria-hidden="true">×</button>
	<h4>Alert!</h4>
	<strong>Warning!</strong> The account you entered does not match any known account on file.  If you cannot remember your password try: <a href="<c:url value="/recover.htm"/>" class="alert-link">Recover Password.</a>
</div>
</c:if>
<div class="row clearfix">
	<div class="col-md-6 column">
		<form name='f' role="form" action="<c:url value="processLogin.htm"/>" method='post'>
			<div class="form-group">
				 <label for="username">Username:</label>
				 <input type="text" class="form-control" id="username" name='username' value=''/>
			</div>
			<div class="form-group">
				 <label for="passwd">Password</label>
				 <input type="password" class="form-control" id="passwd" name='password'/>
			</div>
			<div class="form-group">
				<button type="submit" class="btn btn-primary">Login</button>&nbsp;or <a href="<c:url value="/register.htm"/>" class="alert-link">Sign up for Fox River Sports</a>
			</div>
			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" />
		</form>
	</div>
	<div class="col-md-6 column">
		<div class="panel panel-default">
			<div class="panel-heading">
				<h3 class="panel-title">
					Panel title
				</h3>
			</div>
			<div class="panel-body">
				Panel content
			</div>
		</div>
	</div>
</div>
</div>

</body>
