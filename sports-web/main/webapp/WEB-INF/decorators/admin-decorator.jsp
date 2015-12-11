<%@ page language="java" contentType="text/html; charset=UTF-8" trimDirectiveWhitespaces="true" pageEncoding="UTF-8"%>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Fox River Sports - <sitemesh:write property='title'/></title>
<jsp:include page="/WEB-INF/includes/admin/admin-metadata.jsp"/>
<!-- Bootstrap -->
<!-- Latest compiled and minified CSS -->
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap.min.css">

<!-- Optional theme -->
<link rel="stylesheet" href="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/css/bootstrap-theme.min.css">

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
  <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
<![endif]-->

<!-- fox river sports css -->
<link rel="stylesheet" href="<c:url value="/resources/css/foxriversports.css"/>">
<link rel="stylesheet" href="<c:url value="/resources/css/bootstrap-override.css"/>">

<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.1/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.2.0/js/bootstrap.min.js"></script>

<script src="//cdn.datatables.net/1.10.2/js/jquery.dataTables.min.js"></script>

<sitemesh:write property='head'/>
</head>
<body class="<sitemesh:write property='body.class'/>">
<div class="container">
<jsp:include page="/WEB-INF/includes/admin/admin-nav.jsp"/>
<jsp:include page="/WEB-INF/includes/admin/admin-banner.jsp"/>
<sitemesh:write property='body'/>
</div>
<jsp:include page="/WEB-INF/includes/copywrite.jsp"/>
</body>
</html>