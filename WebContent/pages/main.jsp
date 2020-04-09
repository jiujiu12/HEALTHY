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
	 <script type="text/javascript" src="http://www.daimajiayuan.com/download/jquery/jquery-1.10.2.min.js"></script> 
	<title>购物网</title>
	
</head>

<body >

	<div>网站已被访问：
		<font color="red">
		<%=request.getParameter("count")%>
		</font>次,上次访问时间为：
		<font color="red">
		<%=request.getParameter("lastAccess")%>
		</font>
	</div>
	<!-- 顶部tab -->
	<div class="tab-header">
		<div class="inner">
			<div class="pull-left">
				<div class="pull-left">嗨，欢迎来到<span class="cr">购物网</span></div>
				<a href="temp_article/udai_article4.html">帮助中心</a>
			</div>
			<div class="pull-right">
				<a href="pages/login.jsp"><span class="cr">登录</span></a>
				<a href="pages/login.jsp?p=register">注册</a>
				<a href="udai_welcome.html">我的</a>
			</div>
		</div>
	</div>
	<!-- 搜索栏 -->
	<div class="top-search">
		<div class="inner">
			<div class="search-box">
				<form class="input-group">
					<input placeholder="Ta们都在搜 防病毒口罩" type="text">
					<span class="input-group-btn">
						<button type="button">
							<span class="glyphicon glyphicon-search" aria-hidden="true"></span>
						</button>
					</span>
				</form>
				<p class="help-block text-nowrap">
					<a href="">口罩</a>
					<a href="">医用酒精</a>
					<a href="">消毒液</a>
					<a href="">弹力带</a>
					<a href="">免洗消毒洗手液</a>
				</p>
			</div>
		</div>
	</div>
	<!-- 首页导航栏 -->
	<div class="top-nav bg3">
		<div class="nav-box inner">
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
    <!-- 首页楼层导航 -->
	<nav class="floor-nav visible-lg-block">
		<span class="scroll-nav active">热门排行</span>
		<span class="scroll-nav">医疗卫生</span>
		<span class="scroll-nav">健身器材</span>
		<span class="scroll-nav">送药上门</span>
	</nav>
	<!-- 楼层内容 -->
	<div class="content inner" style="margin-bottom: 40px;">
		<section class="scroll-floor floor-1 clearfix">
			<div class="">
				<div class="floor-title">
					<i class="iconfont icon-tuijian fz16"></i>热门排行
					<a href="" class="more"><i class="iconfont icon-more"></i></a>
				</div>
				<div class="con-box">
					<div class="hot-box">
						<a href="pages/item_show.jsp" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/01yao.jpg" alt="维生素C" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="维生素C">维生素C</div>
						</a>
						<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/01js.jpg" alt="跑步机" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="跑步机">跑步机</div>
						</a>
						<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/01ws.jpg" alt="纱布" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="纱布">纱布</div>
						</a>
						<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/02ws.jpg" alt="N95口罩" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="N95口罩">N95口罩</div>
						</a>
						<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/01js.jpg" alt="跑步机" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="跑步机">跑步机</div>
						</a>
						<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/02ws.jpg" alt="N95口罩" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="N95口罩">N95口罩</div>
						</a>
						<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/01ws.jpg" alt="纱布" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="纱布">纱布</div>
						</a>
						<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/01yao.jpg" alt="维生素C" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="维生素C">维生素C</div>
						</a>
					</div>
				</div>
			</div>
		</section>
		<section class="scroll-floor floor-2">
			<div class="floor-title">
				<i class="iconfont icon-fushi fz16"></i> 医疗卫生
			</div>
			<div class="con-box">
				<div class="">
					<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/01ws.jpg" alt="N95口罩" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="N95口罩">一次性纱布</div>
						</a>
					<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/02ws.jpg" alt="N95口罩" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="N95口罩">N95口罩</div>
						</a>
					<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/03ws.jpg" alt="N95口罩" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="N95口罩">健康礼包</div>
						</a>
					<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/04ws.jpg" alt="N95口罩" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="N95口罩">医用外科口罩四只装</div>
						</a>
					<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/01ws.jpg" alt="N95口罩" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="N95口罩">一次性纱布</div>
						</a>
					<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/02ws.jpg" alt="N95口罩" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="N95口罩">N95口罩</div>
						</a>
					<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/03ws.jpg" alt="N95口罩" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="N95口罩">健康礼包</div>
						</a>
					<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/04ws.jpg" alt="N95口罩" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="N95口罩">医用外科口罩四只装</div>
						</a>
				</div>
			</div>
		</section>
		<section class="scroll-floor floor-3">
			<div class="floor-title">
				<i class="iconfont icon-kid fz16"></i> 健身器材
			</div>
			<div class="con-box">
				<div class="">
					<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/01js.jpg" alt="跑步机" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="跑步机">跑步机</div>
						</a>
					<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/02js.jpg" alt="跑步机" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="跑步机">健身器材</div>
						</a>
						<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/03js.jpg" alt="跑步机" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="跑步机">哑铃</div>
						</a>
						<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/04js.jpg" alt="跑步机" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="跑步机">健身椅</div>
						</a>

					<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/01js.jpg" alt="跑步机" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="跑步机">跑步机</div>
						</a>
					<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/02js.jpg" alt="跑步机" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="跑步机">健身器材</div>
						</a>
						<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/03js.jpg" alt="跑步机" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="跑步机">哑铃</div>
						</a>
						<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/04js.jpg" alt="跑步机" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="跑步机">健身椅</div>
						</a>
				</div>
			</div>
		</section>
		<section class="scroll-floor floor-4">
			<div class="floor-title">
				<i class="iconfont icon-shoes fz16"></i> 送药上门
			</div>
			<div class="con-box">
				<div class="">
					<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/01yao.jpg" alt="维生素C" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="维生素C">维生素C</div>
					</a>
					<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/02yao.jpg" alt="维生素C" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="维生素C">板蓝根</div>
						</a>
					<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/03yao.jpg" alt="维生素C" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="维生素C">消炎药</div>
						</a>
					<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/04yao.jpg" alt="维生素C" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="维生素C">止咳胶囊</div>
						</a>
					<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/01yao.jpg" alt="维生素C" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="维生素C">维生素C</div>
					</a>
					<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/02yao.jpg" alt="维生素C" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="维生素C">板蓝根</div>
						</a>
					<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/03yao.jpg" alt="维生素C" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="维生素C">消炎药</div>
						</a>
					<a href="item_show.html" class="floor-item">
							<div class="item-img hot-img">
								<img src="images/04yao.jpg" alt="维生素C" class="cover">
							</div>
							<div class="price clearfix">
								<span class="pull-left cr fz16">￥18.0</span>
								<span class="pull-right c6"></span>
							</div>
							<div class="name ep" title="维生素C">止咳胶囊</div>
						</a>
					
				</div>
			</div>
		</section>
	</div>
	<script>
		$(document).ready(function(){ 
			// 顶部banner轮播
			var banner_swiper = new Swiper('.banner-box', {
				autoplayDisableOnInteraction : false,
				pagination: '.banner-box .swiper-pagination',
				paginationClickable: true,
				autoplay : 5000,
			});
			// 新闻列表滚动
			var notice_swiper = new Swiper('.notice-box .swiper-container', {
				paginationClickable: true,
				mousewheelControl : true,
				direction : 'vertical',
				slidesPerView : 10,
				autoplay : 2e3,
			});
			// 楼层导航自动 active
			$.scrollFloor();
			// 页面下拉固定楼层导航
			$('.floor-nav').smartFloat();
			$('.to-top').toTop({position:false});
		});
	</script>
	</div>
	<!-- 底部信息 -->
	<div class="footer">
		<div class="copy-box clearfix">
			<ul class="copy-links">
				<a href="udai_about.html"><li>联系我们</li></a>
				<a href="temp_article/udai_article10.html"><li>企业简介</li></a>
			</ul>
			<!-- 版权 -->
			<p class="copyright">
				© 2020 购物 版权所有，并保留所有权利<br>
			</p>
		</div>
	</div>
</body>
</html>
