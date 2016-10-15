<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html lang="en">
<head>
<title>Home</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<%-- <script type="application/x-javascript">
	
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 




</script> --%>
<!-- Custom Theme files -->
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/iconfont.css" rel="stylesheet">
<link href="css/spinMenu.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- menu style -->
<!-- banner slider -->
<link href="css/animate.min.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- <link href="css/owl.carousel.css" rel="stylesheet" type="text/css"
	media="all"> -->
<!-- carousel slider -->
<!-- //Custom Theme files -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- //font-awesome icons -->
<style type="text/css">
.featuredProducts td {
	padding: 2px;
}

.thumbnail {
	text-align: center;
	vertical-align: middle;
}

.thumbnail img {
	border: 1px solid #333;
	width: 100%;
	height: 100%;
}

.thumbnail .productPicture {
	width: 200px;
	height: 200px;
	margin: 0 auto;
}

.thumbnail .caption h4 {
	margin-top: 0;
}

.thumbnail .caption a i {
	font-size: 17px;
}

.btn-group-justified {
	width: 100%;
}

.paging li {
	height: 30px;
}
.spinButton{
	min-width:125px;min-height:125px;
}
</style>
<!-- js -->
<script src="js/jquery.min.js"></script>
<!-- //js -->
<script src="js/jquery-scrolltofixed-min.js" type="text/javascript"></script>
<script>
	$(document).ready(function() {

		$('.header-two').scrollToFixed();
		// previous summary up the page.

		var summaries = $('.summary');
		summaries.each(function(i) {
			var summary = $(summaries[i]);
			var next = summaries[i + 1];

			summary.scrollToFixed({
				marginTop : $('.header-two').outerHeight(true) + 10,
				zIndex : 999
			});
		});
	});
</script>
<!-- start-smooth-scrolling -->
<script type="text/javascript" src="js/move-top.js"></script>
<script type="text/javascript" src="js/easing.js"></script>
<script type="text/javascript">
	jQuery(document).ready(function($) {
		$(".scroll").click(function(event) {
			event.preventDefault();
			$('html,body').animate({
				scrollTop : $(this.hash).offset().top
			}, 1000);
		});
	});
</script>
<!-- //end-smooth-scrolling -->
<!-- smooth-scrolling-of-move-up -->
<script type="text/javascript">
	$(document).ready(function() {

		var defaults = {
			containerID : 'toTop', // fading element id
			containerHoverID : 'toTopHover', // fading element hover id
			scrollSpeed : 1200,
			easingType : 'linear'
		};

		$().UItoTop({
			easingType : 'easeOutQuart'
		});

	});
</script>
<!-- //smooth-scrolling-of-move-up -->
<script src="js/bootstrap.min.js"></script>
</head>
<body style="min-width:1200px;">
	<!-- header -->
	<div class="header">
		<div class="w3ls-header">
			<!--header-one-->
			<div class="w3ls-header-left">
				<p>
					<a href="#"><img src="img/logo.png" class="logo" /></a>
				</p>
			</div>
			<div class="w3ls-header-right">
				<ul>
					<li class="dropdown head-dpdn"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"><i
							class="fa fa-user" aria-hidden="true"></i>我的账户<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<s:if test="#session.user!=null">
								<li><a href="#"><s:property
											value="#session.user.username" /></a></li>
								<li><a href="userLogout">注销</a></li>
								<li><a href="login.html">我的订单</a></li>
								<li><a href="login.html">钱包</a></li>
							</s:if>
							<s:else>
								<li><a href="loginUi">登陆</a></li>
							</s:else>
						</ul></li>
					<li class="dropdown head-dpdn"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"><i
							class="fa fa-percent" aria-hidden="true"></i> 今日特价<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="offers.html">鲜货供应</a></li>
							<li><a href="offers.html">产品折扣</a></li>
							<li><a href="offers.html">特别优惠</a></li>
						</ul></li>
					<li class="dropdown head-dpdn"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"><i
							class="fa fa-gift" aria-hidden="true"></i>优惠卡<span class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="offers.html">超市优惠</a></li>
							<li><a href="offers.html">红包</a></li>
							<li><a href="offers.html">代币券</a></li>
						</ul></li>
					<li class="dropdown head-dpdn"><a href="contact.html"
						class="dropdown-toggle"><i class="fa fa-map-marker"
							aria-hidden="true"></i>实体店</a></li>
					<li class="dropdown head-dpdn"><a href="card.html"
						class="dropdown-toggle"><i class="fa fa-credit-card-alt"
							aria-hidden="true"></i>信用卡</a></li>
					<li class="dropdown head-dpdn"><a href="help.html"
						class="dropdown-toggle"><i class="fa fa-question-circle"
							aria-hidden="true"></i> 帮助</a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="header-two">
			<!-- header-two -->
			<div class="container">
				<div class="header-search">
					<form action="#" method="post">
						<input type="search" name="Search" placeholder="输入商品关键字搜索"
							required="">
						<button type="submit" class="btn btn-default"
							aria-label="Left Align">
							<i class="fa fa-search" aria-hidden="true"> </i>
						</button>
					</form>
				</div>
				<div class="header-cart">
					<div class="my-account">
						<a href="contact.html"><i class="fa fa-map-marker"
							aria-hidden="true"></i> CONTACT US</a>
					</div>
					<div class="cart">
						<form action="#" method="post" class="last">
							<input type="hidden" name="cmd" value="_cart" /> <input
								type="hidden" name="display" value="1" />
							<button class="w3view-cart" type="submit" name="submit" value="">
								<i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
							</button>
						</form>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
		<!-- //header-two -->
		<!-- coming soon -->
		<div class="soon">
			<div class="container">
				<h3>Mega Deal Of the Week</h3>
				<h4>Coming Soon Don't Miss Out</h4>
				<div id="countdown1" class="ClassyCountdownDemo"></div>
			</div>
		</div>
		<!-- //coming soon -->
		<!-- welcome -->
		<div class="welcome">
			<div class="container">
				<div class="welcome-info">
					<div class="bs-example bs-example-tabs" role="tabpanel"
						data-example-id="togglable-tabs">
						<ul id="myTab" class=" nav-tabs" role="tablist">
							<li role="presentation" class="active spinButton"
								data="electronics"><a href="#home" id="home-tab" role="tab"
								data-toggle="tab"> <i class="fa fa-laptop"
									aria-hidden="true"></i>
									<h5>Electronics</h5>
							</a></li>
							<li role="presentation" class="spinButton" data="fashion"><a
								href="#carl" role="tab" id="carl-tab" data-toggle="tab"> <i
									class="fa fa-female" aria-hidden="true"></i>
									<h5>Fashion</h5>
							</a></li>
							<li role="presentation" class="spinButton" data="gifts"><a
								href="#james" role="tab" id="james-tab" data-toggle="tab"> <i
									class="fa fa-gift" aria-hidden="true"></i>
									<h5>Photo & Gifts</h5>
							</a></li>
							<li role="presentation" class="spinButton" data="decor"><a
								href="#decor" role="tab" id="decor-tab" data-toggle="tab"> <i
									class="fa fa-home" aria-hidden="true"></i>
									<h5>Home Decor</h5>
							</a></li>
							<li role="presentation" class="spinButton" data="sports"><a
								href="#sports" role="tab" id="sports-tab" data-toggle="tab">
									<i class="fa fa-motorcycle" aria-hidden="true"></i>
									<h5>Sports</h5>
							</a></li>
						</ul>
						<div class="clearfix"></div>
						<h3 class="w3ls-title">Featured Products</h3>
						<div id="myTabContent" class="tab-content">
							<table class="featuredProducts">
								<tbody>
									<s:iterator value="#request.list" status="c">
										<s:if test="#c.count==1">
											<tr>
										</s:if>
										<td class="col-md-2 col-sm-2 col-lg-2">
											<div class="thumbnail">
												<div class="productPicture">
													<img
														src="json/download_file?isBreviary=1&id=${breviaryPicture.id}"
														alt="...">
												</div>
												<div class="caption">
													<h4>${name}</h4>
													<form action="#" method="post">
													<input type="hidden" name="cmd" value="_cart">
													<input type="hidden" name="add" value="1"> 
													<input type="hidden" name="w3ls_item" value="Digital Camera"> 
													<input type="hidden" name="amount" value="100.00"> 
													<button type="submit" class="w3ls-cart" style="width:110px;"><i class="fa fa-cart-plus" aria-hidden="true"></i>加入购物车</button>
													<a href="#" class="btn btn-primary" role="button"><i
															class="iconfont">&#xe6b4;</i>购买</a>
															</form>
												</div>
											</div>
										</td>
										<s:elseif test="#c.count%5==0">
											</tr>
											<tr>
										</s:elseif>
									</s:iterator>
									</tr>
									<tr>
										<td colspan="5" style="text-align:center;">
											<div class="paging" style="margin:0 auto;">
												<ul class="pagination">
													<s:if test="currentPage<2">
														<li class="disabled"><a href="javascript:void(0)"
															aria-label="Previous"> <span style="height:21px"
																class="glyphicon glyphicon-arrow-left"></span>
														</a></li>
													</s:if>
													<s:else>
														<li><a href="javascript:void(0)"
															aria-label="Previous" paging-data="${currentPage-1 }"
															data-toggle="tooltip" data-placement="top"
															title="<s:text name='previousPage'/>"> <span
																style="height:21px"
																class="glyphicon glyphicon-arrow-left"></span>
														</a></li>
													</s:else>
													<s:if test="totalPage==0">
														<li class="disabled"><a href="javascript:void(0)">0</a></li>
													</s:if>
													<s:elseif test="totalPage<11">
														<s:iterator begin="1" end="totalPage" status="s">
															<s:if test="#s.count==currentPage">
																<li class="active"><a href="javascript:void(0)"
																	paging-data="${s.count}">${s.count}</a></li>
															</s:if>
															<s:else>
																<li><a href="javascript:void(0)"
																	paging-data="${s.count}">${s.count}</a></li>
															</s:else>
														</s:iterator>
													</s:elseif>
													<s:else>
														<s:if test="currentPage<6">
															<s:iterator begin="1" end="10" status="s">
																<s:if test="#s.count==currentPage">
																	<li class="active"><a href="javascript:void(0)"
																		paging-data="${s.count}">${s.count}</a></li>
																</s:if>
																<s:else>
																	<li><a href="javascript:void(0)"
																		paging-data="${s.count}">${s.count}</a></li>
																</s:else>
															</s:iterator>
														</s:if>
														<s:else>
															<s:iterator begin="currentPage-5"
																end="currentPage+5>totalPage?totalPage:currentPage+5"
																status="s" var="cur">
																<s:if test="#cur==currentPage">
																	<li class="active"><a href="javascript:void(0)"
																		paging-data="${cur}">${cur }</a></li>
																</s:if>
																<s:else>
																	<li><a href="javascript:void(0)"
																		paging-data="${cur}">${cur}</a></li>
																</s:else>
															</s:iterator>
														</s:else>
													</s:else>
													<s:if test="currentPage>=totalPage">
														<li class="disabled"><a href="javascript:void(0)"
															aria-label="Next"><span style="height:21px"
																class="glyphicon glyphicon-arrow-right"></span> </a></li>
													</s:if>
													<s:else>
														<li><a href="javascript:void(0)" aria-label="Next"
															paging-data="${currentPage+1}" data-toggle="tooltip"
															data-placement="top" title="<s:text name='nextPage'/>"
															style="margin-right:20px"><span style="height:21px"
																class="glyphicon glyphicon-arrow-right"></span></a></li>
													</s:else>
												</ul>
											</div>
										</td>
									<tr />
								</tbody>
							</table>
						</div>
						<!-- deals -->
						<div class="deals">
							<div class="container">
								<h3 class="w3ls-title">DEALS OF THE DAY</h3>
								<div class="deals-row">
									<div class="col-md-3 focus-grid">
										<a href="products.html" class="wthree-btn">
											<div class="focus-image">
												<i class="fa fa-mobile"></i>
											</div>
											<h4 class="clrchg">Mobiles</h4>
										</a>
									</div>
									<div class="col-md-3 focus-grid">
										<a href="products.html" class="wthree-btn wthree1">
											<div class="focus-image">
												<i class="fa fa-laptop"></i>
											</div>
											<h4 class="clrchg">Electronics & Appliances</h4>
										</a>
									</div>
									<div class="col-md-3 focus-grid">
										<a href="products4.html" class="wthree-btn wthree2">
											<div class="focus-image">
												<i class="fa fa-wheelchair"></i>
											</div>
											<h4 class="clrchg">Furnitures</h4>
										</a>
									</div>
									<div class="col-md-3 focus-grid">
										<a href="products3.html" class="wthree-btn wthree3">
											<div class="focus-image">
												<i class="fa fa-home"></i>
											</div>
											<h4 class="clrchg">Home Decor</h4>
										</a>
									</div>
									<div class="col-md-2 focus-grid w3focus-grid-mdl">
										<a href="products9.html" class="wthree-btn wthree3">
											<div class="focus-image">
												<i class="fa fa-book"></i>
											</div>
											<h4 class="clrchg">Books & Music</h4>
										</a>
									</div>
									<div class="col-md-2 focus-grid w3focus-grid-mdl">
										<a href="products1.html" class="wthree-btn wthree4">
											<div class="focus-image">
												<i class="fa fa-asterisk"></i>
											</div>
											<h4 class="clrchg">Fashion</h4>
										</a>
									</div>
									<div class="col-md-2 focus-grid w3focus-grid-mdl">
										<a href="products2.html" class="wthree-btn wthree2">
											<div class="focus-image">
												<i class="fa fa-gamepad"></i>
											</div>
											<h4 class="clrchg">Kids</h4>
										</a>
									</div>
									<div class="col-md-2 focus-grid w3focus-grid-mdl">
										<a href="products5.html" class="wthree-btn wthree">
											<div class="focus-image">
												<i class="fa fa-shopping-basket"></i>
											</div>
											<h4 class="clrchg">Groceries</h4>
										</a>
									</div>
									<div class="col-md-2 focus-grid w3focus-grid-mdl">
										<a href="products7.html" class="wthree-btn wthree5">
											<div class="focus-image">
												<i class="fa fa-medkit"></i>
											</div>
											<h4 class="clrchg">Health</h4>
										</a>
									</div>
									<div class="col-md-2 focus-grid w3focus-grid-mdl">
										<a href="products8.html" class="wthree-btn wthree1">
											<div class="focus-image">
												<i class="fa fa-car"></i>
											</div>
											<h4 class="clrchg">Automotive</h4>
										</a>
									</div>
									<div class="col-md-3 focus-grid">
										<a href="products5.html" class="wthree-btn wthree2">
											<div class="focus-image">
												<i class="fa fa-cutlery"></i>
											</div>
											<h4 class="clrchg">Food</h4>
										</a>
									</div>
									<div class="col-md-3 focus-grid">
										<a href="products4.html" class="wthree-btn wthree5">
											<div class="focus-image">
												<i class="fa fa-futbol-o"></i>
											</div>
											<h4 class="clrchg">Sports</h4>
										</a>
									</div>
									<div class="col-md-3 focus-grid">
										<a href="products2.html" class="wthree-btn wthree3">
											<div class="focus-image">
												<i class="fa fa-gamepad"></i>
											</div>
											<h4 class="clrchg">Games & Toys</h4>
										</a>
									</div>
									<div class="col-md-3 focus-grid">
										<a href="products6.html" class="wthree-btn ">
											<div class="focus-image">
												<i class="fa fa-gift"></i>
											</div>
											<h4 class="clrchg">Gifts</h4>
										</a>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
						<!-- //deals -->
						<!-- footer-top -->
						<div class="w3agile-ftr-top">
							<div class="container">
								<div class="ftr-toprow">
									<div class="col-md-4 ftr-top-grids">
										<div class="ftr-top-left">
											<i class="fa fa-truck" aria-hidden="true"></i>
										</div>
										<div class="ftr-top-right">
											<h4>FREE DELIVERY</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit. Fusce tempus justo ac</p>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="col-md-4 ftr-top-grids">
										<div class="ftr-top-left">
											<i class="fa fa-user" aria-hidden="true"></i>
										</div>
										<div class="ftr-top-right">
											<h4>CUSTOMER CARE</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit. Fusce tempus justo ac</p>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="col-md-4 ftr-top-grids">
										<div class="ftr-top-left">
											<i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
										</div>
										<div class="ftr-top-right">
											<h4>GOOD QUALITY</h4>
											<p>Lorem ipsum dolor sit amet, consectetur adipiscing
												elit. Fusce tempus justo ac</p>
										</div>
										<div class="clearfix"></div>
									</div>
									<div class="clearfix"></div>
								</div>
							</div>
						</div>
						<div class="copy-right">
							<div class="container">
								<p>Copyright &copy; 2016.Company name All rights reserved</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- cart-js -->
	<script src="js/minicart.js"></script>
	<script>
		w3ls.render();

		w3ls.cart.on('w3sb_checkout', function(evt) {
			var items, len, i;

			if (this.subtotal() > 0) {
				items = this.items();

				for (i = 0, len = items.length; i < len; i++) {
					items[i].set('shipping', 0);
					items[i].set('shipping2', 0);
				}
			}
		});
	</script>
	<!-- //cart-js -->
	<!-- countdown.js -->
	<script src="js/jquery.knob.js"></script>
	<script src="js/jquery.throttle.js"></script>
	<script src="js/jquery.classycountdown.js"></script>
	<script>
		$(document).ready(function() {
			$('#countdown1').ClassyCountdown({
				end : '1388268325',
				now : '1387999995',
				labels : true,
				style : {
					element : "",
					textResponsive : .5,
					days : {
						gauge : {
							thickness : .10,
							bgColor : "rgba(0,0,0,0)",
							fgColor : "#1abc9c",
							lineCap : 'round'
						},
						textCSS : 'font-weight:300; color:#fff;'
					},
					hours : {
						gauge : {
							thickness : .10,
							bgColor : "rgba(0,0,0,0)",
							fgColor : "#05BEF6",
							lineCap : 'round'
						},
						textCSS : ' font-weight:300; color:#fff;'
					},
					minutes : {
						gauge : {
							thickness : .10,
							bgColor : "rgba(0,0,0,0)",
							fgColor : "#8e44ad",
							lineCap : 'round'
						},
						textCSS : ' font-weight:300; color:#fff;'
					},
					seconds : {
						gauge : {
							thickness : .10,
							bgColor : "rgba(0,0,0,0)",
							fgColor : "#f39c12",
							lineCap : 'round'
						},
						textCSS : ' font-weight:300; color:#fff;'
					}

				},
				onEndCallback : function() {
					console.log("Time out!");
				}
			});
		});
	</script>
	<!-- menu js aim -->
	<script src="js/spinMenu.js"></script>

	<!-- Resource jQuery -->
	<!-- //menu js aim -->
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->
</body>
</html>