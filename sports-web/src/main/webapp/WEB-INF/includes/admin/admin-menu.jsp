<%@ page language="java" contentType="text/html; charset=ISO-8859-1" trimDirectiveWhitespaces="true" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<div class="col-md-2 column">
	<ul class="nav nav-pills nav-stacked">
		<li class="<c:if test="${admintab eq 'LEAGUE_RULES'}">active</c:if>">
			<a href="<c:url value="/admin/rules.htm"/>">League Rules</a>
			<c:if test="${admintab eq 'LEAGUE_RULES'}">
			<ul class="nav nav-pills nav-stacked">
				<li>
					<a href="<c:url value="/admin/addrule.htm"/>">Add Rule</a>
				</li>
			</ul>
		</c:if>
		</li>
		<li class="<c:if test="${admintab eq 'LEAGUES'}">active</c:if>">
			<a href="<c:url value="/admin/leagues.htm"/>">Leagues</a>
		</li>
	</ul>
	<%-- <div class="list-group">
		
		<a href="<c:url value="/admin/leagues.htm"/>" class="list-group-item <c:if test="${admintab eq 'LEAGUES'}">active</c:if>">Leagues</a>
		<a href="#" class="list-group-item">Admin Action 3</a>
		<a href="#" class="list-group-item">Admin Action 4</a>
		<a href="#" class="list-group-item">Admin Action 5</a>
	</div> --%>
</div>
