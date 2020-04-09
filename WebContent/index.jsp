<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cmn-Hans">
<head>
	<meta charset="UTF-8">
	<link rel="stylesheet" href="${path}/css/iconfont.css">
	<link rel="stylesheet" href="${path}/css/global.css">
	<link rel="stylesheet" href="${path}/css/bootstrap.min.css">
	<link rel="stylesheet" href="${path}/css/bootstrap-theme.min.css">
	<link rel="stylesheet" href="${path}/css/swiper.min.css">
	<link rel="stylesheet" href="${path}/css/styles.css">
	<script src="${path}/js/jquery.1.12.4.min.js" charset="UTF-8"></script>
	<script src="${path}/js/bootstrap.min.js" charset="UTF-8"></script>
	<script src="${path}/js/swiper.min.js" charset="UTF-8"></script>
	<script src="${path}/js/global.js" charset="UTF-8"></script>
	<script src="${path}/js/jquery.DJMask.2.1.1.js" charset="UTF-8"></script>
	<title>购物网</title>
</head>
<body>
<jsp:forward page="/TestServlet2"></jsp:forward>
</body>
</html>
