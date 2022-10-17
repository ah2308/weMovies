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

</head>
<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt
					style="padding-top: 15%;">
					<img src="${path}/resources/images/img-01.png" alt="IMG">
				</div>

				<form action="pwUpdate" method="post" id="pwUpdateForm"
					name="pwUpdateForm">
					<input type="hidden" id="mid" name="mid" value="${login.mid}">
					<span class="login100-form-title"> Change Password </span>
					<div class="wrap-input100 validate-input" data-validate="현재 비밀번호">
						<input class="input100" type="password" name="pwd" id="pwd"
							placeholder="Password"> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-lock"
							aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate="새 비밀번호">
						<input class="input100" type="password" name="pwd1" id="pwd1"
							placeholder="Password"> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-lock"
							aria-hidden="true"></i>
						</span>
					</div>
					<div class="wrap-input100 validate-input" data-validate="새 비밀번호 확인">
						<input class="input100" type="password" name="pwd2" id="pwd2"
							placeholder="Password"> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-lock"
							aria-hidden="true"></i>
						</span>
					</div>
					<div class="container-login100-form-btn">
						<button type="button" id="pwUpdate" name="pwUpdate"
							class="login100-form-btn">비밀번호 변경</button>
						<a href="mypage" class="btn btn-default">취소</a>
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
	<script type="text/javascript">
		$(document).ready(function() {

			$("#pwUpdate").on("click", function() {
				if ($("#pwd").val == "") {
					alert("현재 비밀번호를 입력해주세요");
					$("#pwd").focus();
					return false;
				}
				if ($("#pwd1").val == "") {
					alert("변경비밀번호을를 입력해주세요");
					$("#pwd1").focus();
					return false;
				}
				if ($("#pwd2").val == "") {
					alert("변경비밀번호를 입력해주세요");
					$("#pwd2").focus();
					return false;
				}
				if ($("#pwd1").val() != $("#pwd2").val()) {
					alert("변경비밀번호가 일치하지 않습니다.");
					$("#pwd2").focus();
				}
				if ($("#pwd").val() == $("#pwd1").val()) {
					alert("현재 비밀번호와 변경비밀번호가 일치합니다.");
					$("#pwd1").focus();
				}

				$.ajax({
					url : "pwCheck",
					type : "POST",
					dataType : "json",
					data : $("#pwUpdateForm").serializeArray(),
					success : function(data) {

						if (data == 0) {
							alert("패스워드가 틀렸습니다.");
							return;
						} else {
							if (confirm("변경하시겠습니까?")) {
								$("#pwUpdateForm").submit();
							}
						}
					}
				});
			});
		});
	</script>
</body>
</html>