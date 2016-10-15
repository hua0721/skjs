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
<title>SinglePage</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<meta name="keywords" content="" />
<script type="application/x-javascript">
	
	
	
	 addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
		function hideURLbar(){ window.scrollTo(0,1); } 



</script>
<!-- Custom Theme files -->
<link href="css/bootstrap.min.css" rel="stylesheet" type="text/css"
	media="all" />
<link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/animate.min.css" rel="stylesheet" type="text/css"
	media="all" />
<!-- animation -->
<link href="css/menu.css" rel="stylesheet" type="text/css" media="all" />
<!-- menu style -->
<link href="css/owl.carousel.css" rel="stylesheet" type="text/css"
	media="all">
<!-- carousel slider -->
<!-- //Custom Theme files -->
<!-- font-awesome icons -->
<link href="css/font-awesome.css" rel="stylesheet">
<!-- //font-awesome icons -->
<!-- js -->
<script src="js/jquery.min.js"></script>
<script src="js/owl.carousel.js"></script>
<script src="js/bootstrap.min.js"></script>
<!--flex slider-->
<script defer src="js/jquery.flexslider.js"></script>
<link rel="stylesheet" href="css/flexslider.css" type="text/css"
	media="screen" />
<script>
	// Can also be used with $(document).ready()
	$(window).load(function() {
		$('.flexslider').flexslider({
			animation : "slide",
			controlNav : "thumbnails"
		});
	});
</script>
<!--flex slider-->
<script src="js/imagezoom.js"></script>
<!-- //js -->
<!-- scroll to fixed-->
<script src="js/jquery-scrolltofixed-min.js" type="text/javascript"></script>
<script>
	$(document).ready(function() {

		// Dock the header to the top of the window when scrolled past the banner. This is the default behaviour.

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
<!-- //scroll to fixed-->
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
</head>
<body>
	<!-- header -->
	<div class="header">
		<div class="w3ls-header">
			<!--header-one-->
			<div class="w3ls-header-left">
				<p>
					<a href="#"></a>
				</p>
			</div>
			<div class="w3ls-header-right">
				<ul>
					<li class="dropdown head-dpdn"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"><i
							class="fa fa-user" aria-hidden="true"></i> My Account<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="login.html">Login </a></li>
							<li><a href="signup.html">Sign Up</a></li>
							<li><a href="login.html">My Orders</a></li>
							<li><a href="login.html">Wallet</a></li>
						</ul></li>
					<li class="dropdown head-dpdn"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"><i
							class="fa fa-percent" aria-hidden="true"></i> Today's Deals<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="offers.html">Cash Back Offers</a></li>
							<li><a href="offers.html">Product Discounts</a></li>
							<li><a href="offers.html">Special Offers</a></li>
						</ul></li>
					<li class="dropdown head-dpdn"><a href="#"
						class="dropdown-toggle" data-toggle="dropdown"><i
							class="fa fa-gift" aria-hidden="true"></i> Gift Cards<span
							class="caret"></span></a>
						<ul class="dropdown-menu">
							<li><a href="offers.html">Product Gift card</a></li>
							<li><a href="offers.html">Occasions Register</a></li>
							<li><a href="offers.html">View Balance</a></li>
						</ul></li>
					<li class="dropdown head-dpdn"><a href="contact.html"
						class="dropdown-toggle"><i class="fa fa-map-marker"
							aria-hidden="true"></i> Store Finder</a></li>
					<li class="dropdown head-dpdn"><a href="card.html"
						class="dropdown-toggle"><i class="fa fa-credit-card-alt"
							aria-hidden="true"></i> Credit Card</a></li>
					<li class="dropdown head-dpdn"><a href="help.html"
						class="dropdown-toggle"><i class="fa fa-question-circle"
							aria-hidden="true"></i> Help</a></li>
				</ul>
			</div>
			<div class="clearfix"></div>
		</div>
		<div class="header-two">
			<!-- header-two -->
			<div class="container">
				<div class="header-search">
					<form action="#" method="post">
						<input type="search" name="Search"
							placeholder="Search for a Product..." required="">
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
		<!-- breadcrumbs -->
		<div class="container">
			<ol class="breadcrumb breadcrumb1">
				<li><a href="index.html">Home</a></li>
				<li class="active">Single Page</li>
			</ol>
			<div class="clearfix"></div>
		</div>
	</div>
	<!-- //breadcrumbs -->
	<!-- products -->
	<div class="products">
		<div class="container">
			<div class="single-page">
				<div class="single-page-row" id="detail-21">
					<div class="col-md-6 single-top-left">
						<div class="flexslider">
							<ul class="slides">
								<li data-thumb="img/s1.jpg">
									<div class="thumb-image detail_images">
										<img src="img/s1.jpg" data-imagezoom="true"
											class="img-responsive" alt="">
									</div>
								</li>
								<li data-thumb="img/s2.jpg">
									<div class="thumb-image">
										<img src="img/s2.jpg" data-imagezoom="true"
											class="img-responsive" alt="">
									</div>
								</li>
								<li data-thumb="img/s3.jpg">
									<div class="thumb-image">
										<img src="img/s3.jpg" data-imagezoom="true"
											class="img-responsive" alt="">
									</div>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-md-6 single-top-right">
						<h3 class="item_name">Electric Snow Blower</h3>
						<p>Processing Time: Item will be shipped out within 2-3
							working days.</p>
						<div class="single-rating">
							<ul>
								<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
								<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
								<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
								<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
								<li><i class="fa fa-star-o" aria-hidden="true"></i></li>
								<li class="rating">20 reviews</li>
								<li><a href="#">Add your review</a></li>
							</ul>
						</div>
						<div class="single-price">
							<ul>
								<li>$540</li>
								<li><del>$600</del></li>
								<li><span class="w3off">10% OFF</span></li>
								<li>Ends on: June,5th</li>
								<li><a href="#"><i class="fa fa-gift"
										aria-hidden="true"></i> Coupon</a></li>
							</ul>
						</div>
						<div class="single-price-text">
							<p>尺寸：
								<s:iterator value="#{'1':'30','2':'40','3':'50' }">
									<label class="radio-inline"> <input type="radio"
										name="size" id="inlineRadio${key}"
										value="option1"> ${value}
									</label>
								</s:iterator>
							</p>
							<p>颜色：
								<s:iterator value="#{'1':'red','2':'block','3':'blue' }">
									<label class="radio-inline"> <input type="radio"
										name="color" id="inlineRadio${key}"
										value="option1"> ${value}
									</label>
								</s:iterator>
							</p>
							<p>版本：
								<s:iterator value="#{'1':'china','2':'english','3':'japan' }">
									<label class="radio-inline"> <input type="radio"
										name="version" id="inlineRadio${key}"
										value="option1"> ${value}
									</label>
								</s:iterator>
							</p>
						</div>
						<form action="#" method="post">
							<input type="hidden" name="cmd" value="_cart" /> <input
								type="hidden" name="add" value="1" /> <input type="hidden"
								name="w3ls_item" value="Snow Blower" /> <input type="hidden"
								name="amount" value="540.00" />
							<button type="submit" class="btn btn-default">
								<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
							</button>
						</form>
						<button class="btn btn-success">
							<span class="glyphicon glyphicon-usd"></span> Go to buy
						</button>
					</div>
					<div class="clearfix"></div>
				</div>
				
				<div class="single-page-icons social-icons">
					<ul>
						<li><i class="fa fa-heart-o" aria-hidden="true"></i>点击收藏该宝贝</li>
						<li><h4>Share on</h4></li>
						<li><a href="#" class="fa fa-facebook icon facebook"> </a></li>
						<li><a href="#" class="fa fa-twitter icon twitter"> </a></li>
						<li><a href="#" class="fa fa-google-plus icon googleplus">
						</a></li>
						<li><a href="#" class="fa fa-dribbble icon dribbble"> </a></li>
						<li><a href="#" class="fa fa-rss icon rss"> </a></li>
					</ul>
				</div>
			</div>
			<!-- recommendations -->
			<div class="recommend">
				<h3 class="w3ls-title">Our Recommendations</h3>
				<script>
					$(document).ready(function() {
						$("#owl-demo5").owlCarousel({

							autoPlay : 3000, //Set AutoPlay to 3 seconds

							items : 4,
							itemsDesktop : [ 640, 5 ],
							itemsDesktopSmall : [ 414, 4 ],
							navigation : true

						});

					});
				</script>
				<div id="owl-demo5" class="owl-carousel">
					<div class="item">
						<div class="glry-w3agile-grids agileits">
							<div class="new-tag">
								<h6>
									20% <br> Off
								</h6>
							</div>
							<a href="products1.html"><img src="img/f2.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">
								<h4>
									<a href="products1.html">Women Sandal</a>
								</h4>
								<p>Lorem ipsum dolor sit amet consectetur</p>
								<h5>$20</h5>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="Women Sandal" /> <input type="hidden"
										name="amount" value="20.00" />
									<button type="submit" class="w3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="glry-w3agile-grids agileits">
							<a href="products.html"><img src="img/e4.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">
								<h4>
									<a href="products.html">Digital Camera</a>
								</h4>
								<p>Lorem ipsum dolor sit amet consectetur</p>
								<h5>$80</h5>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="Digital Camera" /> <input
										type="hidden" name="amount" value="100.00" />
									<button type="submit" class="w3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="glry-w3agile-grids agileits">
							<div class="new-tag">
								<h6>New</h6>
							</div>
							<a href="products4.html"><img src="img/s1.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">
								<h4>
									<a href="products4.html">Roller Skates</a>
								</h4>
								<p>Lorem ipsum dolor sit amet consectetur</p>
								<h5>$180</h5>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="Roller Skates" /> <input
										type="hidden" name="amount" value="180.00" />
									<button type="submit" class="w3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="glry-w3agile-grids agileits">
							<a href="products1.html"><img src="img/f1.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">
								<h4>
									<a href="products1.html">T Shirt</a>
								</h4>
								<p>Lorem ipsum dolor sit amet consectetur</p>
								<h5>$10</h5>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="T Shirt" /> <input type="hidden"
										name="amount" value="10.00" />
									<button type="submit" class="w3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="glry-w3agile-grids agileits">
							<div class="new-tag">
								<h6>New</h6>
							</div>
							<a href="products6.html"><img src="img/p1.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">
								<h4>
									<a href="products6.html">Coffee Mug</a>
								</h4>
								<p>Lorem ipsum dolor sit amet consectetur</p>
								<h5>$14</h5>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="Coffee Mug" /> <input type="hidden"
										name="amount" value="14.00" />
									<button type="submit" class="w3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="glry-w3agile-grids agileits">
							<div class="new-tag">
								<h6>
									20% <br> Off
								</h6>
							</div>
							<a href="products6.html"><img src="img/p2.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">
								<h4>
									<a href="products6.html">Teddy bear</a>
								</h4>
								<p>Lorem ipsum dolor sit amet consectetur</p>
								<h5>$20</h5>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="Teddy bear" /> <input type="hidden"
										name="amount" value="20.00" />
									<button type="submit" class="w3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="glry-w3agile-grids agileits">
							<a href="products4.html"><img src="img/s2.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">
								<h4>
									<a href="products4.html">Football</a>
								</h4>
								<p>Lorem ipsum dolor sit amet consectetur</p>
								<h5>$70</h5>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="Football" /> <input type="hidden"
										name="amount" value="70.00" />
									<button type="submit" class="w3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
					<div class="item">
						<div class="glry-w3agile-grids agileits">
							<div class="new-tag">
								<h6>Sale</h6>
							</div>
							<a href="products3.html"><img src="img/h1.png" alt="img"></a>
							<div class="view-caption agileits-w3layouts">
								<h4>
									<a href="products3.html">Wall Clock</a>
								</h4>
								<p>Lorem ipsum dolor sit amet consectetur</p>
								<h5>$80</h5>
								<form action="#" method="post">
									<input type="hidden" name="cmd" value="_cart" /> <input
										type="hidden" name="add" value="1" /> <input type="hidden"
										name="w3ls_item" value="Wall Clock" /> <input type="hidden"
										name="amount" value="80.00" />
									<button type="submit" class="w3ls-cart">
										<i class="fa fa-cart-plus" aria-hidden="true"></i> Add to cart
									</button>
								</form>
							</div>
						</div>
					</div>
				</div>
			</div>
			<!-- //recommendations -->
			<!-- collapse-tabs -->
			<div class="collpse tabs">
				<h3 class="w3ls-title">About this item</h3>
				<div class="panel-group collpse" id="accordion" role="tablist"
					aria-multiselectable="true">
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingOne">
							<h4 class="panel-title">
								<a class="pa_italic" role="button" data-toggle="collapse"
									data-parent="#accordion" href="#collapseOne"
									aria-expanded="true" aria-controls="collapseOne"> <i
									class="fa fa-file-text-o fa-icon" aria-hidden="true"></i>
									Description <span class="fa fa-angle-down fa-arrow"
									aria-hidden="true"></span> <i class="fa fa-angle-up fa-arrow"
									aria-hidden="true"></i>
								</a>
							</h4>
						</div>
						<div id="collapseOne" class="panel-collapse collapse in"
							role="tabpanel" aria-labelledby="headingOne">
							<div class="panel-body">Anim pariatur cliche reprehenderit,
								enim eiusmod high life accusamus terry richardson ad squid. 3
								wolf moon officia aute, non cupidatat skateboard dolor brunch.
								Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
								tempor, sunt aliqua put a bird on it squid single-origin coffee
								nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica,
								craft beer labore wes anderson cred nesciunt sapiente ea
								proident. Ad vegan excepteur butcher vice lomo. Leggings
								occaecat craft beer farm-to-table, raw denim aesthetic synth
								nesciunt you probably haven't heard of them accusamus labore
								sustainable VHS.</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingTwo">
							<h4 class="panel-title">
								<a class="collapsed pa_italic" role="button"
									data-toggle="collapse" data-parent="#accordion"
									href="#collapseTwo" aria-expanded="false"
									aria-controls="collapseTwo"> <i
									class="fa fa-info-circle fa-icon" aria-hidden="true"></i>
									additional information <span class="fa fa-angle-down fa-arrow"
									aria-hidden="true"></span> <i class="fa fa-angle-up fa-arrow"
									aria-hidden="true"></i>
								</a>
							</h4>
						</div>
						<div id="collapseTwo" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingTwo">
							<div class="panel-body">Anim pariatur cliche reprehenderit,
								enim eiusmod high life accusamus terry richardson ad squid. 3
								wolf moon officia aute, non cupidatat skateboard dolor brunch.
								Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
								tempor, sunt aliqua put a bird on it squid single-origin coffee
								nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica,
								craft beer labore wes anderson cred nesciunt sapiente ea
								proident. Ad vegan excepteur butcher vice lomo. Leggings
								occaecat craft beer farm-to-table, raw denim aesthetic synth
								nesciunt you probably haven't heard of them accusamus labore
								sustainable VHS.</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingThree">
							<h4 class="panel-title">
								<a class="collapsed pa_italic" role="button"
									data-toggle="collapse" data-parent="#accordion"
									href="#collapseThree" aria-expanded="false"
									aria-controls="collapseThree"> <i
									class="fa fa-check-square-o fa-icon" aria-hidden="true"></i>
									reviews (5) <span class="fa fa-angle-down fa-arrow"
									aria-hidden="true"></span> <i class="fa fa-angle-up fa-arrow"
									aria-hidden="true"></i>
								</a>
							</h4>
						</div>
						<div id="collapseThree" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingThree">
							<div class="panel-body">Anim pariatur cliche reprehenderit,
								enim eiusmod high life accusamus terry richardson ad squid. 3
								wolf moon officia aute, non cupidatat skateboard dolor brunch.
								Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
								tempor, sunt aliqua put a bird on it squid single-origin coffee
								nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica,
								craft beer labore wes anderson cred nesciunt sapiente ea
								proident. Ad vegan excepteur butcher vice lomo. Leggings
								occaecat craft beer farm-to-table, raw denim aesthetic synth
								nesciunt you probably haven't heard of them accusamus labore
								sustainable VHS.</div>
						</div>
					</div>
					<div class="panel panel-default">
						<div class="panel-heading" role="tab" id="headingFour">
							<h4 class="panel-title">
								<a class="collapsed pa_italic" role="button"
									data-toggle="collapse" data-parent="#accordion"
									href="#collapseFour" aria-expanded="false"
									aria-controls="collapseFour"> <i
									class="fa fa-question-circle fa-icon" aria-hidden="true"></i>
									help <span class="fa fa-angle-down fa-arrow" aria-hidden="true"></span>
									<i class="fa fa-angle-up fa-arrow" aria-hidden="true"></i>
								</a>
							</h4>
						</div>
						<div id="collapseFour" class="panel-collapse collapse"
							role="tabpanel" aria-labelledby="headingFour">
							<div class="panel-body">Anim pariatur cliche reprehenderit,
								enim eiusmod high life accusamus terry richardson ad squid. 3
								wolf moon officia aute, non cupidatat skateboard dolor brunch.
								Food truck quinoa nesciunt laborum eiusmod. Brunch 3 wolf moon
								tempor, sunt aliqua put a bird on it squid single-origin coffee
								nulla assumenda shoreditch et. Nihil anim keffiyeh helvetica,
								craft beer labore wes anderson cred nesciunt sapiente ea
								proident. Ad vegan excepteur butcher vice lomo. Leggings
								occaecat craft beer farm-to-table, raw denim aesthetic synth
								nesciunt you probably haven't heard of them accusamus labore
								sustainable VHS.</div>
						</div>
					</div>
				</div>
			</div>
			<!-- //collapse -->
		</div>
	</div>
	<!--//products-->
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
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Fusce tempus justo ac</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-4 ftr-top-grids">
					<div class="ftr-top-left">
						<i class="fa fa-user" aria-hidden="true"></i>
					</div>
					<div class="ftr-top-right">
						<h4>CUSTOMER CARE</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Fusce tempus justo ac</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="col-md-4 ftr-top-grids">
					<div class="ftr-top-left">
						<i class="fa fa-thumbs-o-up" aria-hidden="true"></i>
					</div>
					<div class="ftr-top-right">
						<h4>GOOD QUALITY</h4>
						<p>Lorem ipsum dolor sit amet, consectetur adipiscing elit.
							Fusce tempus justo ac</p>
					</div>
					<div class="clearfix"></div>
				</div>
				<div class="clearfix"></div>
			</div>
		</div>
	</div>
	<!-- //footer-top -->
	<div class="copy-right">
		<div class="container">
			<p>Copyright &copy; 2016.Company name All rights reserved</p>
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
	<!-- menu js aim -->
	<script src="js/jquery.menu-aim.js">
		
	</script>
	<script src="js/main.js"></script>
	<!-- Resource jQuery -->
	<!-- //menu js aim -->
	<!-- Bootstrap core JavaScript
    ================================================== -->
	<!-- Placed at the end of the document so the pages load faster -->

</body>
</html>