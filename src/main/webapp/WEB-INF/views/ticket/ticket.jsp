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
	<div class="container-fluid">
		<div class="row justify-content-start">
		<c:forEach items="${info}" var="info">
			<div class="col-lg-4">
				<img src="https://image.tmdb.org/t/p/original/${info.poster_path}" style="object-fit: cover; height: 650px; width: 420px;">
			</div>
			<div class="col-lg-6">
				<div class="row mb-3">
					<div class="col-lg">
						<label class="form-label"><%= request.getAttribute("title")%></label>
					</div>
				</div>
				<div class="mb-3">
					<div class="col-lg">
						<label class="form-label">${info.cinema}</label>
					</div>
					<div class="col-lg">
						<label class="form-label">${info.screen}</label>
					</div>
					<div class="col-lg">
						<label class="form-label">${info.runtime}</label>
					</div>
				</div>
			</div>
		</c:forEach>
		</div>
	</div>
</body>
</html>
