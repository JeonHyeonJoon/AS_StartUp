<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib uri="http://tiles.apache.org/tags-tiles" prefix="tiles"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath }" />
<%
	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="UTF-8">
<title>로그인</title>
<script src="../resources/js/login.js"></script>
<link type="text/css" rel="stylesheet" href="../resources/css/login.css">
</head>
<body>
	<div class="limiter">
		<div class="container-login100">
			<div class="wrap-login100">
				<div class="login100-pic js-tilt" data-tilt>
					<a href="${contextPath}/main/main.do"><img src="../resources/img/1020.png" alt="IMG"></a>
				</div>

				<form class="login100-form validate-form" method="post"
					action="${contextPath}/member/login.do">
					<span class="login100-form-title"> LOGIN </span>
					<div class="wrap-input100 validate-input">
						<input class="input100" type="text" name="cuId" placeholder="아이디">
						<span class="focus-input100"></span> <span class="symbol-input100">
							<i class="fa fa-user-circle" aria-hidden="true"></i>
						</span>
					</div>

					<div class="wrap-input100 validate-input">
						<input class="input100" type="password" name="pw"
							placeholder="비밀번호"> <span class="focus-input100"></span>
						<span class="symbol-input100"> <i class="fa fa-lock"
							aria-hidden="true"></i>
						</span>
					</div>

					<div class="container-login100-form-btn">
						<button class="login100-form-btn">로그인</button>
					</div>

					<div class="text-center p-t-12">
						<span class="txt1"> 사라진 </span> <a class="txt2" href="${contextPath }/member/pw.do"> 비밀번호 찾기 </a>
					</div>
					<!-- 회원가입 폼으로 -->
					<div class="text-center p-t-136">
						<a class="txt2" href="${contextPath}/member/selectMember.do"> 회원가입 <i
							class="fa fa-long-arrow-right m-l-5" aria-hidden="true"></i>
						</a>
					</div>
				</form>
			</div>
		</div>
	</div>
</body>
</html>