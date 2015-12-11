<%@ page language="java" contentType="text/html; charset=ISO-8859-1" trimDirectiveWhitespaces="true" pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<head>
	<title>Administration</title>
<!-- 	<link rel="stylesheet" href="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.1/themes/smoothness/jquery-ui.css" />
	<script src="//ajax.googleapis.com/ajax/libs/jqueryui/1.11.1/jquery-ui.min.js"></script> -->
</head>
<body class="foxriverbg sports admin">
<div class="row clearfix">
<c:set var="menuitem" scope="request" value="SPORTS"/>
<jsp:include page="/WEB-INF/includes/admin/admin-left-menu.jsp"/>
<div class="col-sm-9 column">
<div id="sports-table-container">
	<div class="panel panel-default">
		<div class="panel-heading">
			<button class="btn btn-primary btn-sm btn-new">New</button>
		</div>
		<div class="panel-body">
			<table id="sports-table" class="table table-striped">
				<thead>
					<tr>
						<th>Sport</th>
						<th>Code</th>
						<th>Started</th>
						<th>Description</th>
					</tr>
				</thead>
				<tbody>
					<c:forEach items="${sports}" var="sport">
						<tr class="<c:if test="${not empty sport.endDate}">warning</c:if>">
							<td><div class="dropdown">
								<a class="btn-link dropdown-toggle" id="${sport.code}" data-toggle="dropdown">
									<c:out value="${sport.name}"/><span class="caret"></span></a>
								<ul class="dropdown-menu" role="menu" aria-labelledby="${sport.code}">
									<c:url var="editUri" scope="page" value="/admin/editSport.htm?code=${sport.code}"/>
									<li role="presentation"><a role="menuitem" tabindex="-1" href="${editUri}">Edit</a></li>
									<c:url var="disableUri" scope="page" value="/admin/removeSport.htm?code=${sport.code}"/>
									<li role="presentation"><a role="menuitem" tabindex="-1" href="${disableUri}">Disable</a></li>
								</ul>
							</div></td>
							<td><c:out value="${sport.code}"/></td>
							<td><fmt:formatDate pattern="MM/dd/yyyy" value="${sport.startDate}"/></td>
							<td><c:out value="${sport.description}"/></td>
						</tr>
					</c:forEach>
				</tbody>
			</table>
		</div>
	</div>
</div>
<div id="sports-form-container" style="display: none">
<c:url var="addUri" scope="page" value="/admin/addSport.htm"/>
<form:form id="sportsForm" modelAttribute="sport" role="form" action="${addUri}" method="post">
	<div class="panel panel-default">
		<div class="panel-heading">
	        <button type="button" class="btn btn-default btn-cancel">Cancel</button>
	        <button type="submit" class="btn btn-primary btn-save">Save</button>
		</div>
		<div class="panel-body">
			<div class="form-group">
				<form:label path="name">Sport Name</form:label>
				<form:input path="name" cssClass="form-control" id="sport-name"/>
			</div>
			<div class="form-group">
				<form:label path="code">Code</form:label>
				<form:input path="code" cssClass="form-control" id="sport-code"/>
			</div>
			<div class="form-group">
				<form:label path="startDate">Start Date</form:label>
				<div class="input-group">
					<form:input path="startDate" cssClass="form-control" id="startDate"/>
					<span class="input-group-addon">MM/dd/yyyy</span>
				</div>
			</div>
			<div class="form-group">
				<form:label path="description">Description</form:label>
				<form:textarea path="description" cssClass="form-control" rows="3"/>
			</div>
		</div>
	</div>
</form:form>
</div>
</div>
</div>
<script type="text/javascript">
;(function($) {
	function processSportChanges() {
    	var $url = $("#sportsForm").attr('action');//.replace(".htm", ".json");
		console.log($url);
		var $data = $("#sportsForm").serializeArray();
		console.log($data);
		var token = $("meta[name='_csrf']").attr("content");
		var header = $("meta[name='_csrf_header']").attr("content");
		$.ajax({
			type: "POST",
			url: $url,
			cache: false,
			data: JSON.stringify($data),
			contentType: 'application/json; charset=UTF-8',
			/*headers: { 
		        'Accept': 'application/json',
		        'Content-Type': 'application/json' 
		    },*/
		    dataType: 'json',
			beforeSend: function(xhr, settings) {
				xhr.setRequestHeader(header, token);
			}
		})
		.done(function(data, status, jqXHR) {
			alert( "second success" );
		})
		.fail(function(jqXHR, status, errorThrown) {
			alert( "error" );
		})
		.always(function(jqXHR, status, errorThrown) {
			$('.btn-cancel').click();
			alert( "finished" );
		});
	}

	$(document).ready(function() {		
		$('.btn-new').on('click', function() {
			$('#sports-table-container').slideUp();
			$('#sports-form-container').show("slow");
		});
		
		$('.btn-cancel').on('click', function() {
			$("#sports-form-container").slideUp();
			$("#sports-table-container").show("slow");
			$('#sportsForm')[0].reset();
		});
		
		$('.btn-save').on('click', function(event) {
			event.preventDefault();
			processSportChanges();
		});

		$('#sports-table').dataTable({
	    	searching: false,
	    	ordering: false,
	    	paging: false
	    });
	    
	    $('a[role="menuitem"]').click(function(event) {
	    	event.preventDefault();
	    	var $url = $(this).prop('href');	
	    	window.alert($url);
	    });
	    
	});
})(jQuery);
</script>
</body>