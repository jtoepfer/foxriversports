<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<title>My Profile</title>
</head>
<body>

<jsp:include page="/WEB-INF/includes/navbar.jsp"/>

<div class="tabbable" id="tabs-profile">
	<ul class="nav nav-tabs">
		<li class="active">
			<a href="#panel-profile" data-toggle="tab">Section 1</a>
		</li>
		<li>
			<a href="#panel-notify" data-toggle="tab">Section 2</a>
		</li>
	</ul>

	<div class="tab-content">
		<div class="tab-pane active" id="panel-profile">
			<!-- This section will display their user profile, and allow them to change information. -->
			<p>I'm in Section 1.</p>
		</div>
		<div class="tab-pane" id="panel-notify">
			<!-- This tab content will display all the notifications that the system is configured to send out, and allow the user to choose which ones they want. -->
			<p>Howdy, I'm in Section 2.</p>
		</div>
	</div>
</div>

</body>
