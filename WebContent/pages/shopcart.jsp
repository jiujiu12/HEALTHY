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
	<title>购物车</title>
</head>
<body>
	<!-- 顶部tab -->
	<div class="tab-header">
		<div class="inner">
			<div class="pull-right">
				<a href="login.html"><span class="cr">登录</span></a>
				<a href="login.html?p=register">注册</a>
				<a href="udai_welcome.html">我的</a>
			</div>
		</div>
	</div>
	<!-- 顶部标题 -->
	<div class="bgf5 clearfix">
		<div class="top-user">
			<div class="inner">
				<div class="title">购物车</div>
			</div>
		</div>
	</div>
	<div class="content clearfix bgf5">
		<section class="user-center inner clearfix">
			<div class="user-content__box clearfix bgf">
				<div class="title">购物车</div>
				<form action="udai_shopcart_pay.html" class="shopcart-form__box">
					<table class="table table-bordered">
						<thead>
							<tr>
								<th width="150">
									<label class="checked-label"><input type="checkbox" class="check-all"><i></i> 全选</label>
								</th>
								<th width="300">商品信息</th>
								<th width="200">数量</th>
								<th width="200">价格</th>
								<th width="80">操作</th>
							</tr>
						</thead>
						<tbody>
							<tr>
								<th scope="row">
									<label class="checked-label"><input type="checkbox"><i></i>
										<div class="img"><img src="../images/01yao.jpg" alt="" class="cover"></div>
									</label>
								</th>
								<td>
									<div class="name ep3">维生素C</div>
								</td>
								<td>
									<div class="cart-num__box">
										<input type="button" class="sub" value="-">
										<input type="text" class="val" value="1" maxlength="2">
										<input type="button" class="add" value="+">
									</div>
								</td>
								<td>¥18.0</td>
								<td><a href="">删除</a></td>
							</tr>
							<tr>
								<th scope="row">
									<label class="checked-label"><input type="checkbox"><i></i>
										<div class="img"><img src="../images/01yao.jpg" alt="" class="cover"></div>
									</label>
								</th>
								<td>
									<div class="name ep3">维生素C</div>
								</td>
								<td>
									<div class="cart-num__box">
										<input type="button" class="sub" value="-">
										<input type="text" class="val" value="1" maxlength="2">
										<input type="button" class="add" value="+">
									</div>
								</td>
								<td>¥18.0</td>
								<td><a href="">删除</a></td>
							</tr>
							<tr>
								<th scope="row">
									<label class="checked-label"><input type="checkbox"><i></i>
										<div class="img"><img src="../images/01yao.jpg" alt="" class="cover"></div>
									</label>
								</th>
								<td>
									<div class="name ep3">维生素C</div>
								</td>
								<td>
									<div class="cart-num__box">
										<input type="button" class="sub" value="-">
										<input type="text" class="val" value="1" maxlength="2">
										<input type="button" class="add" value="+">
									</div>
								</td>
								<td>¥18.0</td>
								<td><a href="">删除</a></td>
							</tr>
						</tbody>
					</table>
					<div class="user-form-group tags-box shopcart-submit pull-right">
						<button type="submit" class="btn">提交订单</button>
					</div>
					<div class="checkbox shopcart-total">
						<label><input type="checkbox" class="check-all"><i></i> 全选</label>
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<a href="">删除</a>
						<div class="pull-right">
							已选商品 <span>2</span> 件
							&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;合计（不含运费）
							<b class="cr">¥<span class="fz24">40.00</span></b>
						</div>
					</div>
					<script>
						$(document).ready(function(){
							var $item_checkboxs = $('.shopcart-form__box tbody input[type="checkbox"]'),
								$check_all = $('.check-all');
							// 全选
							$check_all.on('change', function() {
								$check_all.prop('checked', $(this).prop('checked'));
								$item_checkboxs.prop('checked', $(this).prop('checked'));
							});
							// 点击选择
							$item_checkboxs.on('change', function() {
								var flag = true;
								$item_checkboxs.each(function() {
									if (!$(this).prop('checked')) { flag = false }
								});
								$check_all.prop('checked', flag);
							});
							// 个数限制输入数字
							$('input.val').onlyReg({reg: /[^0-9.]/g});
							// 加减个数
							$('.cart-num__box').on('click', '.sub,.add', function() {
								var value = parseInt($(this).siblings('.val').val());
								if ($(this).hasClass('add')) {
									$(this).siblings('.val').val(Math.min((value += 1),99));
								} else {
									$(this).siblings('.val').val(Math.max((value -= 1),1));
								}
							});
						});
					</script>
				</form>
			</div>
		</section>
	</div>
</body>
</html>