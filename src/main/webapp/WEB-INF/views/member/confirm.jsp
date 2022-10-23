<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="en">
<head>
<title>Regist V1</title>
<c:set var="path" value="${pageContext.request.contextPath}" />
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->
<link rel="icon" type="image/png"
	href="${path}/resources/images/icons/favicon.ico" />
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${path}/resources/vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${path}/resources/fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${path}/resources/vendor/animate/animate.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${path}/resources/vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${path}/resources/vendor/select2/select2.min.css">
<!--===============================================================================================-->
<link rel="stylesheet" type="text/css"
	href="${path}/resources/css/util.css">
<link rel="stylesheet" type="text/css"
	href="${path}/resources/css/main.css">
<!--===============================================================================================-->
<script src="https://kit.fontawesome.com/3400d00a45.js"
	crossorigin="anonymous"></script>
<script type="text/javascript">
	//<![CDATA[
	//]]>
</script>
</head>
<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt
					style="padding-top: 15%;">
					<img src="${path}/resources/images/img-01.png" alt="IMG">
				</div>
				<div class="container-login100-form-btn">
					<button type="button" href="/index" class="login100-form-btn">홈</button>
				</div>
				<div class="container-login100-form-btn">
					<button type="button" href="loginForm" class="login100-form-btn">로그인</button>
				</div>

				<div class="text-center p-t-136">
					<a class="txt2" href="/"> 홈으로 <i
						class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
					</a>
				</div>
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