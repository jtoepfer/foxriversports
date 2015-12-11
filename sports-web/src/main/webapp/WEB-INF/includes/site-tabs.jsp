<%@ page language="java" contentType="text/html; charset=ISO-8859-1" trimDirectiveWhitespaces="true" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<!-- site-tabs.jsp -->
<div class="page-tabs">
	<ul class="tabrow">
		<sec:authorize access="isAnonymous()">
		<li><a href="<c:out value="/foxriversports/signin.htm"/>" title="Register/Sign In">Register/Sign In</a></li>
		</sec:authorize>
		<sec:authorize access="isAuthenticated()">
		<li><a href="<c:out value="/foxriversports/profile.htm"/>" title="My Profile">My Profile</a></li>
		<sec:authorize access="hasRole('ROLE_ADMIN')">
		<li><a href="<c:out value="/foxriversports/admin/admin.htm"/>" title="Administration">Administration</a></li>
		</sec:authorize>
		<li><a id="logout" href="<c:out value="/foxriversports/logout.htm"/>" title="My Profile">Logout</a></li>
		</sec:authorize>
	</ul>
</div>
<form id="logoutForm" action="<c:out value="logout.htm"/>" method="post">
  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
</form>
<script type="text/javascript">
;(function($) {
	$(document).ready(function() {
		$('#logout').click(function(event) {
			event.preventDefault();
			$('#logoutForm').submit();
			return false;
		});
	});
})(jQuery);
</script>