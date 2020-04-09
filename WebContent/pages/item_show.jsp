<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
    <c:set value="${pageContext.request.contextPath}" var="path" scope="page"/>
<!DOCTYPE html>
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
	 <!-- <script src="https://cdn.staticfile.org/jquery/1.10.2/jquery.min.js">
</script> -->
	<title>V&H</title>
</head>
<body>
	<!-- 顶部tab -->
	<div class="tab-header">
		<div class="inner">
			<div class="pull-left">
				<div class="pull-left">嗨，欢迎来到<span class="cr">购物</span></div>
			</div>
			<div class="pull-right">
				<a href="login.html"><span class="cr">登录</span></a>
				<a href="login.html?p=register">注册</a>
				<a href="udai_welcome.html">我的</a>
			</div>
		</div>
	</div>
	<!-- 搜索栏 -->
	<div class="top-search">
		<div class="inner">
			<div class="cart-box">
				<a href="shopcart.jsp" class="cart-but">
					<i class="iconfont icon-shopcart cr fz16"></i> 购物车 0 件
				</a>
			</div>
		</div>
	</div>
	<!-- 内页导航栏 -->
	<div class="top-nav bg3">
		<div class="nav-box inner">
			<div class="all-cat">
				<div class="title"><i class="iconfont icon-menu"></i> 全部分类</div>
			</div>
			<ul class="nva-list">
				<a href="${path}/TestServlet"><li class="active">首页</li></a>
				<a href="${path}/TestServlet"><li>热门排行</li></a>
				<a href="${path}/TestServlet"><li>周边推荐</li></a>
				<a href="${path}/TestServlet"><li>医疗卫生</li></a>
				<a href="${path}/TestServlet"><li>健身器材</li></a>
				<a href="${path}/TestServlet"><li>室内健身</li></a>
				<a href="${path}/TestServlet"><li>送药上门</li></a>
			</ul>
		</div>
	</div>
	<div class="content inner">
		<section class="item-show__div item-show__head clearfix">
			<div class="pull-left">
				<ol class="breadcrumb">
					<li><a href="index.html">首页</a></li>
					<li class="active">维生素c</li>
				</ol>
				<img class="" src="../images/01yao.jpg" alt="维生素C">
				<!-- <div class="item-pic__box" id="magnifier">
					<div class="small-box">
						<img class="cover" src="../images/01yao.jpg" alt="维生素C">
						<span class="hover"></span>
					</div>
					<div class="thumbnail-box">
						<div class="thumb-list">
							<ul class="wrapper clearfix">
								<li class="item active" data-src="../images/01yao.jpg"><img class="cover" src="../images/01yao.jpg" alt="商品预览图"></li>
							</ul>
						</div>
					</div>
					
				</div> -->
				<script src="js/jquery.magnifier.js"></script>
				<script>
					/* $(function () {
						$('#magnifier').magnifier();
					}); */
				</script>
				<div class="item-info__box">
					<div class="item-title">
						<div class="name ep2">维生素c</div>
					</div>
					<div class="item-price bgf5">
						<div class="price-box clearfix">
							<div class="price-panel pull-left">
								售价：<span class="price">￥18 <s class="fz16 c9">￥24.00</s></span>
							</div>
						</div>
					</div>
					<div class="item-key">
						
						<div class="item-amount clearfix bgf5">
							<div class="item-metatit">数量：</div>
							<div class="amount-box">
								<div class="amount-widget">
									<input class="amount-input" value="1" maxlength="8" title="请输入购买量" type="text">
									<div class="amount-btn">
										<a class="amount-but add"></a>
										<a class="amount-but sub"></a>
									</div>
								</div>
								<div class="item-stock"><span style="margin-left: 10px;">库存 <b id="Stock">1000</b> 件</span></div>
								<script>
									$(function () {
										$('.amount-input').onlyReg({reg: /[^0-9]/g});
										var stock = parseInt($('#Stock').html());
										$('.amount-widget').on('click','.amount-but',function() {
											var num = parseInt($('.amount-input').val());
											if (!num) num = 0;
											if ($(this).hasClass('add')) {
												if (num > stock - 1){
													return DJMask.open({
													width:"300px",
													height:"100px",
													content:"您输入的数量超过库存上限"
												});
												}
												$('.amount-input').val(num + 1);
											} else if ($(this).hasClass('sub')) {
												if (num == 1){
													return DJMask.open({
													width:"300px",
													height:"100px",
													content:"您输入的数量有误"
												});
												}
												$('.amount-input').val(num - 1);
											}
										});
									});
								</script>
							</div>
							</div>
						<div class="item-action clearfix bgf5">
							<a href="javascript:;" rel="nofollow" data-addfastbuy="true" title="点击此按钮，到下一步确认购买信息。" role="button" class="item-action__buy">立即购买</a>
							<a href="/WebApp/CartServlet?id=1" rel="nofollow" data-addfastbuy="true" role="button" class="item-action__basket">
								<i class="iconfont icon-shopcart"></i> 加入购物车
							</a>
						</div>
					</div>
				</div>
			</div>			
	</div>
</body>
</html>