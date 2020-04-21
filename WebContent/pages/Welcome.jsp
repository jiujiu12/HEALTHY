<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cmn-Hans">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>欢迎呀！</title>
</head>
<body>
	<form action="${pageContext.request.contextPath}/pages/Welcome.jsp?num1="+num1>
		<c:if test="${empty param.num1}">
			name：<input type="text" name="num1"> 
				<input type="submit" value="submit" /><br /> 
		</c:if>	
		<c:if test="${not empty param.num1}">
			${param.num1} welcome！！<br />
		</c:if>
	</form>

</body>
</html>