<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>跳转</title>

<script type='text/javascript'>
var i=5;
function getTime(){
	document.getElementById('num').innerHTML="<font color='red'>"+i+"</font>";
	i-=1;
	var x=setTimeout('getTime()',1000)//1000毫秒=1秒
	if(i<=0){
		clearTimeout(x);
	}
}
	window.οnlοad=getTime;//开始执行倒计时
	let arr=new Array(3),
	count=-1;
	setInterval(function(){
		count++;
		if(arr[arr.size-1]==null&&count<3){
			arr[count]=".";
		}else if(count=3){
			count=-1;
		}else if(arr){
			
		}
	},1000)
</script>
</head>
<body>
<div>
	跳转成功，<span id='num'>5</span>秒后转至首页
	<span id="ellipsis"></span><br/>
	若为跳转失败，点击<a href="WebApp/../index.jsp">此处</a>
</div>
</body>
</html>