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
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
</head>
<body>
	<div class="container">
		<div class="row">
			<div class="col">
				<c:forEach items="${list}" var="list">
					<img src="${list.poster_path}" style="object-fit: cover; height: 650px; width: 420px;">
					<label class="form-control">${list.title}</label>
					<label class="form-control">${list.overview}</label>
					<label class="form-control">${list.cinema}</label>
					<label class="form-control">${list.showtime}</label>
					<label class="form-control">${list.screen}</label>
					<label class="form-control">${list.genres}</label>
				</c:forEach>
				</form>
			</div>
		</div>
	</div>
</body>
</html>
