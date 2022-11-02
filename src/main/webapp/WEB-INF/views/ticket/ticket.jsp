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
				<form>
				<select class="form-control" onchange="checkInfo()">
				<c:forEach items="${list}" var="list">
					<option value="${list.title}" id="title">${list.title}</option>
				</c:forEach>
				</select>
				</form>
			</div>
			<div class="col">
				<form>
				<select class="form-control">
				<c:forEach items="${info}" var="info">
					<option value="${info.cinema}">${info.cinema}</option>
				</c:forEach>
				</select>
				</form>
			</div>
		</div>
	</div>
	<script>
		function checkInfo(){
			var title = $('#title').val();
			$.ajax({
				url: 'ressub',
				type: 'POST',
				data: {title:title},
				success:function() {
					console.log("title값 가져오기 성공");
					console.log(info.cinema);
				},
				error:function(){
					console.log("title값 가져오기 실패");
				}
			});
		}
	</script>
</body>
</html>
