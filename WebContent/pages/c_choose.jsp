<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
      
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="zh-cmn-Hans">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<c:choose>
   <c:when test="${empty param.username}">
		   unKnown user
	   </c:when>
   <c:when test="${param.username=='itcast'}">
		  itcast is a manager
	   </c:when>
   <c:otherwise>
 		   you are a manager
   </c:otherwise>
</c:choose>
</body>
</html>