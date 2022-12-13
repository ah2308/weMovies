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
	<script>
		$(document).on('change', '#movie', function(){
			var option = $('#movie option:selected').val()
			$.ajax({
				type:'POST',
				url:'resinfo',
				data: 'option',
				success: function(data){
					console.log(option);
					console.log("aaaaaa");
				},
				error: function(error){
					console.log(error);
				}
			})
		})
	</script>
</head>
<body>
	<div class="select">
		<select id="movie">
			<c:forEach items="${list}" var="list">
				<option value="${list.title}">${list.title }</option>
			</c:forEach>
		</select>
		
		<p>----------------------------------------------
		<select id="info">
			<c:forEach items="${info}" var="info">
				<option value="${info.screen}">${info.screen}</option>
			</c:forEach>
		</select>
	</div>
</body>
</html>
