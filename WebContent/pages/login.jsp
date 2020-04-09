<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cmn-Hans">
	<meta name="viewport" charset="utf-8" content="width=device-width, initial-scale=1, maximum-scale=1, user-scalable=no">
	<title>请登录</title>
	<link rel="stylesheet" href="../css/select.css" />
	<link rel="stylesheet" href="../css/verify.css" />
	<link rel="stylesheet" href="../css/style.css" />
	<link rel="stylesheet" href="../css/style.css">
	<script src="js/select.js"></script>
	<body>

		<div class="login-container">
			<h1>登录/注册</h1>
			
			<form action="" id="contact-form" class="form-horizontal">
				<fieldset>

					<div class="control-group">
						<div class="controls">
							<input type="text" class="username" name="username" id="name" placeholder="用户名" title="请填写用户名!" required autocomplete="off">
						</div>
					</div>
					<div class="control-group">
						<div class="controls">
							<input type="text" class="password" name="password" id="password" placeholder="密码" title="请填写密码!" required autocomplete="off">
						</div>
					</div>
					<!-- 输入验证码 -->
					<div>
							<input type="text" class="topAlign" id="verify" name="verify" required placeholder="验证码" title="请输入验证码!" autocomplete="off">
							<canvas width="100" height="40" id="verifyCanvas"></canvas>
							<img id="code_img">
						</div>
					<!-- /输入验证码-->
				</fieldset>
				<button id="submit" type="submit">登 陆</button>
				<button id="login" type="">注 册</button>
			</form>

		</div>
		<!-- jQuery via Google + local fallback, see h5bp.com -->
		<script src="../assets/js/jquery-1.7.1.min.js"></script>
		<!-- Bootstrap JS -->
		<script src="../assets/js/bootstrap.min.js"></script>
		<script src="../js/select.js"></script>
		<!-- 验证码 -->
		<script src="../js/verify.js"></script>
		<script src="../js/jquery.min.js"></script>
		<script src="../js/common.js"></script>
		<!--背景图片自动更换-->
		<script src="../js/supersized.3.2.7.min.js"></script>
		<script src="../js/supersized-init.js"></script>
		<!--表单验证-->
		<script src="../js/jquery.validate.min.js?var1.14.0"></script>
		<script src="http://static.runoob.com/assets/jquery-validation-1.14.0/dist/jquery.validate.min.js"></script>
		<script src="../js/messages_zh.js"></script>

		<!-- Prettify plugin -->
		<script src="../assets/js/prettify/prettify.js"></script>

		<!-- Scripts specific to this page -->
		<script src="../js/script.js"></script>

		<script>
			// Activate Google Prettify in this page
			addEventListener('load', prettyPrint, false);

			$(document).ready(function() {

				// Add prettyprint class to pre elements
				$('pre').addClass('prettyprint linenums');

			});
		</script>
		<!-- /表单验证 -->
	</body>
</html>
