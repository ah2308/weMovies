<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<c:set var="path" value="${pageContext.request.contextPath}" />
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<meta name="description" content="">
<meta name="author" content="">

<script src="https://code.jquery.com/jquery-3.4.1.min.js"></script>
<!-- 
    <script src="${path}/resources/js/board.js"></script>
     -->
<title>평점 게시판</title>

<!-- Custom fonts for this template-->
<link href="${path}/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">

<!-- Custom styles for this template-->
<link href="${path}/resources/css/sb-admin-2.min.css" rel="stylesheet">

</head>

<body id="page-top">

	<!-- Page Wrapper -->
	<div id="wrapper">

		<!-- Sidebar -->
		<ul
			class="navbar-nav bg-gradient-primary sidebar sidebar-dark accordion"
			id="accordionSidebar">

			<!-- Sidebar - Brand -->
			<a
				class="sidebar-brand d-flex align-items-center justify-content-center"
				href="../index">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">WE : MOVIES</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link" href="boardList">
					<i class="fas fa-fw fa-tachometer-alt"></i> <span>평점</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">나의 평점</div>

			<!-- Nav Item - Charts -->
			<li class="nav-item"><a class="nav-link" href="charts.html">
					<i class="fas fa-fw fa-chart-area"></i> <span>수정</span>
			</a></li>

			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link" href="tables.html">
					<i class="fas fa-fw fa-table"></i> <span>삭제</span>
			</a></li>

			<!-- Divider -->
			<hr class="sidebar-divider d-none d-md-block">
		</ul>
		<!-- End of Sidebar -->

		<!-- Content Wrapper -->
		<div id="content-wrapper" class="d-flex flex-column">

			<!-- Main Content -->
			<div id="content">

				<!-- Topbar -->
				<nav
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow"
					style="text-align: right">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>
					<!-- Topbar Navbar -->
					<ul class="navbar-nav ms-auto py-4 py-lg-0">
						<li class="nav-item"><a class="nav-link" href="../logout.do">로그아웃</a></li>
						<li class="nav-item"><a class="nav-link" href="../mypage">마이
								페이지</a></li>
						<li class="nav-item"><a class="nav-link" href="boardList">게시판</a></li>
					</ul>
				</nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">Dashboard</h1>
					</div>



					<!-- 영화정보를 DB에서 가져와서 화면에 보여주는 부분 -->
					<div class="row justify-content-md-center" style="margin: 25px;">
						<!-- Content Column -->
						<c:forEach items="${list}" var="list">
							<div class="col-lg-4">
								<img
									src="https://image.tmdb.org/t/p/original/${list.poster_path}"
									style="object-fit: cover; height: 650px; width: 420px;">
							</div>
							<div class="col-lg-6">
								<form id="frm">
									<div class="row mb-3">
										<div class="col-lg">
											<label class="form-label">영화 제목 : (TITLE)</label> <input
												class="form-control" type="text" id="subject" name="subject"
												value="${list.title}" aria-label="title" readonly>
										</div>
										<!-- boardDTO -->
										<div class="col-lg">
											<label class="form-label">작성자 </label> <input
												class="form-control" type="text" value="${mid}" id="name"
												name="name" aria-label="title" readonly>
										</div>
									</div>
									<div class="mb-3">
										<label class="form-label">영화 소개 : (OVERVIEW)</label> <input
											class="form-control" type="text" value="${list.overview}"
											id="overview" name="overview" aria-label="title" readonly>
									</div>
									<div class="row mb-3">
										<div class="col-lg">
											<label class="form-label"> 한줄평 </label> <input type="text"
												class="form-control" id="content" name="content"
												placeholder="한줄평을 남겨주세요."
												autocomplete="off">
										</div>
									</div>
									<div class="row mb-3" style="padding-top: 11rem;">
										<div class="col-lg text-right">
											<div class="my-2"></div>
											<a href="boardList" class="btn btn-secondary btn-icon-split">
												<span class="icon text-white-50"> <i
													class="fas fa-arrow-right"></i>
											</span> <span class="text">돌아가기</span>
											</a>
										</div>
										<div class="col-lg">
											<div class="my-2"></div>
											<button type="button" class="btn btn-success btn-icon-split"
												onclick="fn_boardRegi();">
												<span class="icon text-white-50"> <i
													class="fas fa-check"></i>
												</span> <span class="text">등록하기</span>
											</button>
										</div>
									</div>
								</form>
							</div>
						</c:forEach>
						<!-- /.container-fluid -->

					</div>
					<!-- End of Main Content -->

					<!-- Footer -->
					<footer class="sticky-footer bg-white">
						<div class="container my-auto">
							<div class="copyright text-center my-auto">
								<span>Copyright &copy; Your Website 2021</span>
							</div>
						</div>
					</footer>
					<!-- End of Footer -->

				</div>
				<!-- End of Content Wrapper -->
			</div>
			<!-- End of Page Wrapper -->

			<!-- Scroll to Top Button-->
			<a class="scroll-to-top rounded" href="#page-top"> <i
				class="fas fa-angle-up"></i>
			</a>

			<!-- Logout Modal-->
			<div class="modal fade" id="logoutModal" tabindex="-1" role="dialog"
				aria-labelledby="exampleModalLabel" aria-hidden="true">
				<div class="modal-dialog" role="document">
					<div class="modal-content">
						<div class="modal-header">
							<h5 class="modal-title" id="exampleModalLabel">Ready to
								Leave?</h5>
							<button class="close" type="button" data-dismiss="modal"
								aria-label="Close">
								<span aria-hidden="true">Ã</span>
							</button>
						</div>
						<div class="modal-body">Select "Logout" below if you are
							ready to end your current session.</div>
						<div class="modal-footer">
							<button class="btn btn-secondary" type="button"
								data-dismiss="modal">Cancel</button>
							<a class="btn btn-primary" href="login.html">Logout</a>
						</div>
					</div>
				</div>
			</div>
			<script>
				function fn_boardRegi() {
					var data = $("#frm").serialize();

					$.ajax({
						type : "POST",
						url : "/board/regi",
						data : data,
						success : function(data) {
							if (data == "N") {
								alert("실패");
								console.log(data);
							} else {
								alert("글 등록이 완료되었습니다.");
								console.log(data);
								location.href = "/board/boardList";
							}
						},
						error : function(data) {
							alert("실패1");
							console.log(data);
						}
					});
				};
			</script>
			<!-- Bootstrap core JavaScript-->
			<script src="${path}/resources/vendor/jquery/jquery.min.js"></script>
			<script
				src="${path}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

			<!-- Core plugin JavaScript-->
			<script
				src="${path}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

			<!-- Custom scripts for all pages-->
			<script src="${path}/resources/js/sb-admin-2.min.js"></script>

			<!-- Page level plugins -->
			<script src="${path}/resources/vendor/chart.js/Chart.min.js"></script>

			<!-- Page level custom scripts -->
			<script src="${path}/resources/js/demo/chart-area-demo.js"></script>
			<script src="${path}/resources/js/demo/chart-pie-demo.js"></script>
			<!-- Bootstrap core JavaScript-->
			<script src="${path}/resources/vendor/jquery/jquery.min.js"></script>
			<script
				src="${path}/resources/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

			<!-- Core plugin JavaScript-->
			<script
				src="${path}/resources/vendor/jquery-easing/jquery.easing.min.js"></script>

			<!-- Custom scripts for all pages-->
			<script src="${path}/resources/js/sb-admin-2.min.js"></script>
</body>

</html>