<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<c:set var="path" value="${pageContext.request.contextPath}" />
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no" />
<meta name="description" content="" />
<meta name="author" content="" />
<title>Clean Blog - Start Bootstrap Theme</title>
<link href="${path}/resources/css/sb-admin-2.min.css" rel="stylesheet">
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
</head>
<body>
	<div><%= request.getAttribute("title") %></div>
	<c:forEach items="${info}" var="info">
		<div>${info.screen}</div>
	</c:forEach>
</body>
</html>
