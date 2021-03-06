<%@ page language="java" contentType="text/html; charset=ISO-8859-1" trimDirectiveWhitespaces="true" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<head>
	<title>Administration</title>
	<style type="text/css">
</style>
</head>
<body>
<div class="row clearfix">
<c:set var="menu" scope="request" value="LEAGUES"/>
<jsp:include page="/WEB-INF/includes/admin/admin-left-menu.jsp"/>
<div class="col-sm-9 column">
	<div class="panel panel-default">
		<div class="panel-heading">
			<a href="#" class="btn btn-primary active" type="button">New</a>
		</div>
		<div class="panel-body">
			<table class="table table-striped">
				<thead>
					<tr>
						<th>#</th>
						<th>Product</th>
						<th>Payment Taken</th>
						<th>Status</th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td>1</td>
						<td>TB - Monthly</td>
						<td>01/04/2012</td>
						<td>Default</td>
					</tr>
					<tr class="active">
						<td>1</td>
						<td>TB - Monthly</td>
						<td>01/04/2012</td>
						<td>Approved</td>
					</tr>
					<tr class="success">
						<td>2</td>
						<td>TB - Monthly</td>
						<td>02/04/2012</td>
						<td>Declined</td>
					</tr>
					<tr class="warning">
						<td>3</td>
						<td>TB - Monthly</td>
						<td>03/04/2012</td>
						<td>Pending</td>
					</tr>
					<tr class="danger">
						<td>
							4
						</td>
						<td>
							TB - Monthly
						</td>
						<td>
							04/04/2012
						</td>
						<td>
							Call in to confirm
						</td>
					</tr>
				</tbody>
			</table>
		</div>
	</div>
  </div>
</div> 
</body>
