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
<link rel="icon" type="image/x-icon"
	href="${path}/resources/assets/favicon.ico" />
<!-- Font Awesome icons (free version)-->
<script src="https://use.fontawesome.com/releases/v6.1.0/js/all.js"
	crossorigin="anonymous"></script>
<!-- Google fonts-->
<link
	href="https://fonts.googleapis.com/css?family=Lora:400,700,400italic,700italic"
	rel="stylesheet" type="text/css" />
<link
	href="https://fonts.googleapis.com/css?family=Open+Sans:300italic,400italic,600italic,700italic,800italic,400,300,600,700,800"
	rel="stylesheet" type="text/css" />
<!-- Core theme CSS (includes Bootstrap)-->
<link href="${path}/resources/css/styles.css" rel="stylesheet" />
<script src="https://kit.fontawesome.com/3400d00a45.js"
	crossorigin="anonymous"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script>
$(document).ready(function(){
	$.ajax({
		type: "GET",
		url: "/load_index",
		dataType: "JSON",
		success: function(data){
			let Cardzone = $('#col');
			Cardzone.empty();
			$.each(data, function(){
				let card = '<div class="col col-md-2">'
				card += '<div class="card h-100 text-center">';
				card += '<img src="' + this.poster_path + '" class="card-img-top" style="height: 15rem; object-fit: cover;">'
				card += '<div class="card-body">'
				card += '<h6 class="card-title mb-0 pb-0">' + this.title + '</h6>'
				card += '</div>'
				card += '<form action="/ticket/resinfo" method="GET">'
				card += '<button type="submit" class="btn btn-danger text-white text-center" name="title" value="'+this.title+'" style="width: 100%;">예매하기</input></form></div>'
				Cardzone.append(card);
			});
		},
		error: function(){
			alert("값이 안넘어왔다!");
		}
	});
});
</script>
</head>
<body>
	<!-- Navigation-->
	<nav class="navbar navbar-expand-lg navbar-light" id="mainNav">
		<div class="container px-4 px-lg-5">
			<a class="navbar-brand" href="index">WE:MOVIE</a>
			<button class="navbar-toggler" type="button"
				data-bs-toggle="collapse" data-bs-target="#navbarResponsive"
				aria-controls="navbarResponsive" aria-expanded="false"
				aria-label="Toggle navigation">
				Menu <i class="fas fa-bars"></i>
			</button>
			<div class="collapse navbar-collapse" id="navbarResponsive">
				<c:choose>
					<c:when test="${sessionScope.mid == null}">
						<ul class="navbar-nav ms-auto py-4 py-lg-0">
							<li class="nav-item"><a
								class="nav-link px-lg-3 py-3 py-lg-4" href="login.do">로그인</a></li>
							<li class="nav-item"><a
								class="nav-link px-lg-3 py-3 py-lg-4" href="registForm">회원가입</a></li>
							<li class="nav-item"><a
								class="nav-link px-lg-3 py-3 py-lg-4" href="movie/list">무비
									정보</a></li>
						</ul>
					</c:when>
					<c:otherwise>
						<ul class="navbar-nav ms-auto py-4 py-lg-0">
							<li class="nav-item"><a
								class="nav-link px-lg-3 py-3 py-lg-4" href="ticket/res">예매하기</a></li>
							<li class="nav-item"><a
								class="nav-link px-lg-3 py-3 py-lg-4" href="logout.do">로그아웃</a></li>
							<li class="nav-item"><a
								class="nav-link px-lg-3 py-3 py-lg-4" href="mypage">마이 페이지</a></li>
							<li class="nav-item"><a
								class="nav-link px-lg-3 py-3 py-lg-4" href="board/boardList">게시판</a></li>
						</ul>
					</c:otherwise>
				</c:choose>
			</div>
		</div>
	</nav>
	<!-- Page Header-->
	<div id="carouselExampleIndicators" class="carousel slide"
		data-bs-ride="carousel">
		<div class="carousel-indicators">
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="0" class="active" aria-current="true"
				aria-label="Slide 1"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="1" aria-label="Slide 2"></button>
			<button type="button" data-bs-target="#carouselExampleIndicators"
				data-bs-slide-to="2" aria-label="Slide 3"></button>
		</div>
		<div class="carousel-inner">
			<div class="carousel-item active"
				style="background-image:url('${path}/resources/assets/img/home-bg.jpg'); height: 600px;">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100"
					style="background-image:url('${path}/resources/assets/img/movie_img_01.jpg!d'); height: 600px;">
			</div>
			<div class="carousel-item">
				<img class="d-block w-100"
					style="background-image:url('${path}/resources/assets/img/movie_img_02.jpg'); height: 600px;">
			</div>
		</div>
		<button class="carousel-control-prev" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
			<span class="carousel-control-prev-icon" aria-hidden="true"></span> <span
				class="visually-hidden"></span>
		</button>
		<button class="carousel-control-next" type="button"
			data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
			<span class="carousel-control-next-icon" aria-hidden="true"></span> <span
				class="visually-hidden"></span>
		</button>
	</div>
	<!-- Main Content-->
	<!-- TOP Rating 포스터 카드레이어 -->
	<div class="container" style="padding-top: 20px; padding-bottom: 30px; width: 100%;">
		<jsp:include page="${path}/WEB-INF/views/ticket/modal.jsp" />
		<ul class="">
			<li style="list-style: none; padding-left: 0%; text-align: right; font-size: medium; color: lightslategray;">
			<a href="#">더 많은 영화보기<i class="fa-solid fa-circle-plus"></i></a></li>
		</ul>
		<div class="row">
			<div class="col-md">
				<div class="row row-cols-1 g-4" id="col">
				</div>
			</div>
		</div>
	</div>
	<!-- Footer-->
	<footer class="border-top">
		<div class="container px-4 px-lg-5">
			<div class="row gx-4 gx-lg-5 justify-content-center">
				<div class="col-md-10 col-lg-8 col-xl-7">
					<div class="small text-center text-muted fst-italic">Copyright
						&copy; Your Website 2022</div>
				</div>
			</div>
		</div>
	</footer>
	<!-- Core theme JS-->
	<script src="${path}/resources/js/scripts.js"></script>
	<!-- Bootstrap core JS-->
	<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
