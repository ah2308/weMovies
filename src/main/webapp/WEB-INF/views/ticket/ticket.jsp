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
	<!-- 
	<div class="container">
		<div class="row">
			<div class="col">
				<form>
<<<<<<< HEAD
					<select name="title" class="form-control" onchange="checkInfo()">
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
=======
				<c:forEach items="${list}" var="list">
					<img src="${list.poster_path}" style="object-fit: cover; height: 650px; width: 420px;">
					<label class="form-control">${list.title}</label>
					<label class="form-control">${list.overview}</label>
					<label class="form-control">${list.cinema}</label>
					<label class="form-control">${list.showtime}</label>
					<label class="form-control">${list.screen}</label>
					<label class="form-control">${list.genres}</label>
				</c:forEach>
>>>>>>> branch 'master' of https://github.com/ah2308/weMovies.git
				</form>
			</div>
		</div>
	</div>
<<<<<<< HEAD
	 -->
	<!-- 영화정보를 DB에서 가져와서 화면에 보여주는 부분 -->
	<div class="row justify-content-md-center" style="margin: 25px;">
		<!-- Content Column -->
		<c:forEach items="${list}" var="list">
			${list.title }
			${list.genres }
			${list.overview }
			${list.cinema }
			${list.screen }
			${list.start_day }
			${list.end_day }
			${list.showtime }
		</c:forEach>
	</div>
	<script>
		function checkInfo() {
			var title = $("select[name=title]").val();
			$.ajax({
				url : 'ressub',
				type : 'POST',
				data : {
					title : title
				},
				success : function(data) {
					console.log("title값 가져오기 성공");
					console.log(info.cinema);
				},
				error : function(data) {
					console.log("title값 가져오기 실패");
					console.log(title);
				}
			});
		}
	</script>
=======
>>>>>>> branch 'master' of https://github.com/ah2308/weMovies.git
</body>
</html>