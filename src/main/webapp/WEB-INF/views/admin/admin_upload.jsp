<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>
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
<title>WE MOVIE: 관리자페이지 - DASHBOARD</title>
<!-- Custom fonts for this template-->
<link href="${path}/resources/vendor/fontawesome-free/css/all.min.css"
	rel="stylesheet" type="text/css">
<link
	href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i"
	rel="stylesheet">
<link href="${path}/resources/css/sb-admin-2.min.css" rel="stylesheet">

<!-- 데이트피커 -->
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/jquery/latest/jquery.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/momentjs/latest/moment.min.js"></script>
<script type="text/javascript"
	src="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.min.js"></script>
<link rel="stylesheet" type="text/css"
	href="https://cdn.jsdelivr.net/npm/daterangepicker/daterangepicker.css" />
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
				href="index.html">
				<div class="sidebar-brand-icon rotate-n-15">
					<i class="fas fa-laugh-wink"></i>
				</div>
				<div class="sidebar-brand-text mx-3">
					WE:MOVIE ADMIN <sup>2</sup>
				</div>
			</a>

			<!-- Divider -->
			<hr class="sidebar-divider my-0">

			<!-- Nav Item - Dashboard -->
			<li class="nav-item active"><a class="nav-link"
				href="/movie/list"> <i class="fas fa-fw fa-tachometer-alt"></i>
					<span>Dashboard</span></a></li>

			<!-- Divider -->
			<hr class="sidebar-divider">

			<!-- Heading -->
			<div class="sidebar-heading">메뉴</div>

			<!-- Nav Item - Charts -->
			<li class="nav-item"><a class="nav-link" href="charts.html">
					<i class="fas fa-fw fa-chart-area"></i> <span>Charts</span>
			</a></li>

			<!-- Nav Item - Tables -->
			<li class="nav-item"><a class="nav-link" href="tables.html">
					<i class="fas fa-fw fa-table"></i> <span>Tables</span>
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
					class="navbar navbar-expand navbar-light bg-white topbar mb-4 static-top shadow">

					<!-- Sidebar Toggle (Topbar) -->
					<button id="sidebarToggleTop"
						class="btn btn-link d-md-none rounded-circle mr-3">
						<i class="fa fa-bars"></i>
					</button>
					<!-- Topbar Navbar -->
					<ul class="navbar-nav ml-auto">

						<!-- Nav Item - User Information -->
						<li class="nav-item dropdown no-arrow"><a
							class="nav-link dropdown-toggle" href="#" id="userDropdown"
							role="button" data-toggle="dropdown" aria-haspopup="true"
							aria-expanded="false"> <span
								class="mr-2 d-none d-lg-inline text-gray-600 small">Douglas
									McGee</span> <img class="img-profile rounded-circle"
								src="img/undraw_profile.svg">
						</a> <!-- Dropdown - User Information -->
							<div
								class="dropdown-menu dropdown-menu-right shadow animated--grow-in"
								aria-labelledby="userDropdown">
								<a class="dropdown-item" href="#" data-toggle="modal"
									data-target="#logoutModal"> <i
									class="fas fa-sign-out-alt fa-sm fa-fw mr-2 text-gray-400"></i>
									Logout
								</a>
							</div></li>

					</ul>

				</nav>
				<!-- End of Topbar -->

				<!-- Begin Page Content -->
				<div class="container-fluid">

					<!-- Page Heading -->
					<div
						class="d-sm-flex align-items-center justify-content-between mb-4">
						<h1 class="h3 mb-0 text-gray-800">영화 상영목록 등록하기</h1>
					</div>
					<div class="row justify-content-start">
						<c:forEach items="${list}" var="list">
							<div class="col-lg-4">
								<img
									src="https://image.tmdb.org/t/p/original/${list.poster_path}"
									style="object-fit: cover; height: 650px; width: 420px;">
							</div>
							<div class="col-lg-6">
								<form action="upload" method="post">
									<div class="row mb-3">
										<div class="col-lg">
											<label class="form-label">영화 제목 : (TITLE)</label> <input
												class="form-control" type="text"
												value="${list.title}         | 상영시간: ${list.runtime}분"
												aria-label="title" disabled readonly>
										</div>
										<div class="col-lg">
											<label class="form-label">영화 장르 : (GENRES)</label> <input
												class="form-control" type="text" value="${list.genres}"
												aria-label="title" disabled readonly>
										</div>
									</div>
									<div class="mb-3">
										<label class="form-label">영화 소개 : (OVERVIEW)</label> <input
											class="form-control" type="text" value="${list.overview}"
											aria-label="title" disabled readonly>
									</div>
									<div class="row mb-3">
										<div class="col-lg">
											<label class="form-label">영화관 : (CINEMA)</label> <select
												class="form-control form-select"
												aria-label="multiple select example">
												<c:forEach items="${clist}" var="clist">
													<option value="${clist.c_name}">${clist.c_name}</option>
												</c:forEach>
											</select>
										</div>
										<div class="col-lg">
											<label class="form-label">상영관 : (SCREEN)</label> <select
												class="form-control form-select"
												aria-label="multiple select example">
												<option value="1">1관</option>
												<option value="2">2관</option>
												<option value="3">3관</option>
												<option value="4">4관</option>
											</select>
										</div>
									</div>
									<div class="row mb-3">
										<div class="col-lg">
											<label class="form-label">상영일 : (PERIOD)</label> <input type="text"
												class="form-control" name="days" value="">
										</div>
										<div class="col-lg">
											<label class="form-label">상영 시간 : (SHOWTIMES)</label> <select
												class="form-control form-select"
												aria-label="multiple select example">
												<option value="1">09:40</option>
												<option value="2">11:50</option>
												<option value="3">14:00</option>
												<option value="4">16:10</option>
												<option value="5">18:20</option>
												<option value="6">20:30</option>
												<option value="7">22:40</option>
											</select>
										</div>
									</div>
									<div class="row mb-3" style="padding-top: 11rem;">
										<div class="col-lg text-right">
											<div class="my-2"></div>
											<a href="list" class="btn btn-secondary btn-icon-split">
												<span class="icon text-white-50"> <i
													class="fas fa-arrow-right"></i>
											</span> <span class="text">돌아가기</span>
											</a>
										</div>
										<div class="col-lg">
											<div class="my-2"></div>
											<button type="submit" class="btn btn-success btn-icon-split">
												<span class="icon text-white-50"> <i
													class="fas fa-check"></i>
												</span> <span class="text">등록하기</span>
											</button>
										</div>
									</div>
								</form>
							</div>
						</c:forEach>
					</div>
				</div>
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
					<h5 class="modal-title" id="exampleModalLabel">Ready to Leave?</h5>
					<button class="close" type="button" data-dismiss="modal"
						aria-label="Close">
						<span aria-hidden="true">Ã</span>
					</button>
				</div>
				<div class="modal-body">Select "Logout" below if you are ready
					to end your current session.</div>
				<div class="modal-footer">
					<button class="btn btn-secondary" type="button"
						data-dismiss="modal">Cancel</button>
					<a class="btn btn-primary" href="login.html">Logout</a>
				</div>
			</div>
		</div>
	</div>
	<script type="text/javascript">
		$(function() {
			
			$('input[name="days"]').daterangepicker({
				autoUpdateInput : false,
				locale : {
					cancelLabel : 'Clear'
				}
			});

			$('input[name="days"]').on(
					'apply.daterangepicker',
					function(ev, picker) {
						$(this).val(
								picker.startDate.format('YYYY/MM/DD') + ' - '
										+ picker.endDate.format('YYYY/MM/DD'));
					});

			$('input[name="days"]').on('cancel.daterangepicker',
					function(ev, picker) {
						$(this).val('');
					});

		});
	</script>

	<!-- Custom scripts for all pages-->
	<script src="${path}/resources/js/sb-admin-2.min.js"></script>
</body>

</html>