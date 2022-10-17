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
	$(document).ready(function() {
		$("#submit").on("click", function() {
			if ($("#pwd").val() == "") {
				alert("비밀번호를 입력해주세요.");
				$("#pwd").focus();
				return false;
			}
			if ($("#name").val() == "") {
				alert("성명을 입력해주세요.");
				$("#name").focus();
				return false;
			}
		});

	})
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

				<form action="memberUpdate" method="post" onsubmit="return check()">
					<span class="login100-form-title"> Change UserInfo </span>

					<div class="wrap-input100 validate-input"
						data-validate="변경할 아이디를 입력해주세요.">
						<input class="input100" type="text" id="mid" name="mid"
							value="${mid}" readonly="readonly" placeholder="새 아이디"> <span
							class="focus-input100"></span> <span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input"
						data-validate="변경할 비밀번호를 입력해주세요.">
						<input class="input100" type="password" id="pwd" name="pwd"
							placeholder="새 비밀번호"> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-lock"
							aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input"
						data-validate="변경할 이름를 입력해주세요.">
						<input class="input100" type="text" id="name" name="name"
							value="${name}" placeholder="새 이름"> <span
							class="focus-input100"></span> <span class="symbol-input100">
							<i class="fa fa-lock" aria-hidden="true"></i>
						</span>
					</div>


					<div class="container-login100-form-btn">
						<button type="submit" class="login100-form-btn">회원정보 수정</button>
					</div>

					<div class="text-center p-t-136">
						<a class="txt2" href="/"> 홈으로 <i
							class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
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