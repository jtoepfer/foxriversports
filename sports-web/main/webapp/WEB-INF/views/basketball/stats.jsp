<%@ page language="java" contentType="text/html; charset=ISO-8859-1" trimDirectiveWhitespaces="true" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
<title>Basketball Player Stats</title>
</head>
<body class="frsports bball">

<c:set var="navtab" scope="request" value="BASKETBALL"/>
<jsp:include page="/WEB-INF/includes/navbar.jsp"/>

<div class="tabbable" id="tabs-profile">
	<ul class="nav nav-tabs">
		<li class="active">
			<a href="#panel-team" data-toggle="tab">Team Stats</a>
		</li>
		<li>
			<a href="#panel-game" data-toggle="tab">Game Stats</a>
		</li>
		<li>
			<a href="#panel-player" data-toggle="tab">Game Player</a>
		</li>
	</ul>

	<div class="tab-content">
		<div class="tab-pane active" id="panel-team">

	<div class="panel panel-default">
		<div class="panel-heading">Team Stats</div>
		<div class="panel-body">
			<table class="table table-hover">
				<thead>
					<tr>
						<th>Rank</th>
						<th>Team</th>
						<th>Wins</th>
						<th>Loses</th>
						<th>%</th>
						<th>PPG</th>
						<th>TPA</th>
						<th>TPAPG</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>6</td>
						<td>Team 1</td>
						<td>1</td>
						<td>8</td>
						<td>0.11</td>
						<td>43.78</td>
						<td>394</td>
						<td>50.78</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>

		</div>
		<div class="tab-pane" id="panel-game">
			<!-- This tab content will display game stats. -->
			<p>Game Stats</p>
		</div>
		<div class="tab-pane" id="panel-player">
			<!-- This tab content will display player. -->
			<p>Player Stats</p>
		</div>
	</div>
</div>

</body>