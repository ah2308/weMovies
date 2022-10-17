<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<title>My Page</title>
<c:set var="path" value="${pageContext.request.contextPath}" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="${path}/resources/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${path}/resources/${path}/resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${path}/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${path}/resources/${path}/resources/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${path}/resources/${path}/resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${path}/resources/${path}/resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${path}/resources/css/util.css">
<link rel="stylesheet" type="text/css"
	href="${path}/resources/css/main.css">
<!--===============================================================================================-->
</head>
<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<img src="${path}/resources/images/img-01.png" alt="IMG">
				</div>
				<span class="login100-form-title"> My Page </span>

				<div class="wrap-input100 validate-input" data-validate="ID">
					<a class="nav-link px-lg-3 py-3 py-lg-4" href="pwUpdateView">비밀번호
						변경</a><span class="focus-input100"></span> <i class="fa fa-envelope"
						aria-hidden="true"></i>
				</div>
				<div class="wrap-input100 validate-input" data-validate="ID">
					<a class="nav-link px-lg-3 py-3 py-lg-4" href="#">예매 취소</a><span
						class="focus-input100"></span> <i class="fa fa-envelope"
						aria-hidden="true"></i>
				</div>
				<div class="wrap-input100 validate-input" data-validate="ID">
					<a class="nav-link px-lg-3 py-3 py-lg-4" href="#">#</a> <span
						class="focus-input100"></span> <i class="fa fa-envelope"
						aria-hidden="true"></i>
				</div>
				<div class="text-center p-t-12"></div>



				<div class="text-center p-t-136"></div>
			</div>
		</div>
	</div>




	<!--===============================================================================================-->
	<script src="${path}/resources/vendor/jquery/jquery-3.2.1.min.js"></script>
	<!--===============================================================================================-->
	<script src="${path}/resources/vendor/bootstrap/js/popper.js"></script>
	<script src="${path}/resources/vendor/bootstrap/js/bootstrap.min.js"></script>
	<!--===============================================================================================-->
	<script src="${path}/resources/vendor/select2/select2.min.js"></script>
	<!--===============================================================================================-->
	<script src="${path}/resources/vendor/tilt/tilt.jquery.min.js"></script>
	<script>
		$('.js-tilt').tilt({
			scale : 1.1
		})
	</script>
	<!--===============================================================================================-->
	<script src="${path}/resources/js/main.js"></script>

</body>
</html>