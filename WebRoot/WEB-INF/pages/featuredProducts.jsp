<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib uri="/struts-tags" prefix="s"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>
<base href="<%=basePath%>">

<title>My JSP 'featuredProducts.jsp' starting page</title>

<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="bootstrap/css/bootstrap.min.css" rel="stylesheet"
	type="text/css" media="all" />
<!-- <link href="css/style.css" rel="stylesheet" type="text/css" media="all" />
<link href="css/owl.carousel.css" rel="stylesheet" type="text/css"
	media="all"> -->
<!-- carousel slider -->
<!-- //Custom Theme files -->
<!-- font-awesome icons -->
<link href="css/iconfont.css" rel="stylesheet">
<!-- //font-awesome icons -->
<!-- js -->
<script src="js/jquery/jquery.min.js"></script>
<script src="bootstrap/js/bootstrap.min.js"></script>
</head>
<style type="text/css">
/* .paging {
	height: 35px;
	text-align:center;
	
}

.paging .pagination{
	width:520px;
}

.pagination li a {
	background: none;
	color: #333;
	height: 30px;
} */
</style>
<body>
	<table class="featuredProducts">
		<tbody>
		
			<!-- <td>
					<div class="thumbnail">
						<img src="img/f5.png" alt="...">
						<div class="caption">
							<h4>label</h4>

							<p>
								<a href="#" class="btn btn-default" role="button"><i
									class="iconfont">&#xe6a8;</i>加入购物车</a> <a href="#"
									class="btn btn-primary" role="button"><i class="iconfont">&#xe6b4;</i>购买</a>
							</p>
						</div>
					</div>
				</td>
				<td>
					<div class="thumbnail">
						<img src="img/f5.png" alt="...">
						<div class="caption">
							<h4>label</h4>

							<p>
								<a href="#" class="btn btn-default" role="button"><i
									class="iconfont">&#xe6a8;</i>加入购物车</a> <a href="#"
									class="btn btn-primary" role="button"><i class="iconfont">&#xe6b4;</i>购买</a>
							</p>
						</div>
					</div>
				</td>
				<td>
					<div class="thumbnail">
						<img src="img/f5.png" alt="...">
						<div class="caption">
							<h4>label</h4>
							<p>
								<a href="#" class="btn btn-default" role="button"><i
									class="iconfont">&#xe6a8;</i>加入购物车</a> <a href="#"
									class="btn btn-primary" role="button"><i class="iconfont">&#xe6b4;</i>购买</a>
							</p>
						</div>
					</div>
				</td>
				<td>
					<div class="thumbnail">
						<img src="img/f5.png" alt="...">
						<div class="caption">
							<h4>label</h4>
							<p>
								<a href="#" class="btn btn-default" role="button"><i
									class="iconfont">&#xe6a8;</i>加入购物车</a> <a href="#"
									class="btn btn-primary" role="button"><i class="iconfont">&#xe6b4;</i>购买</a>
							</p>
						</div>
					</div>
				</td>

			</tr>
			<tr>
				<td>
					<div class="thumbnail">
						<img src="img/f5.png" alt="...">
						<div class="caption">
							<h4>label</h4>
							<p>
								<a href="#" class="btn btn-default" role="button"><i
									class="iconfont">&#xe6a8;</i>加入购物车</a> <a href="#"
									class="btn btn-primary" role="button"><i class="iconfont">&#xe6b4;</i>购买</a>
							</p>
						</div>
					</div>
				</td>
				<td>
					<div class="thumbnail">
						<img src="img/f5.png" alt="...">
						<div class="caption">
							<h4>label</h4>

							<p>
								<a href="#" class="btn btn-default" role="button"><i
									class="iconfont">&#xe6a8;</i>加入购物车</a> <a href="#"
									class="btn btn-primary" role="button"><i class="iconfont">&#xe6b4;</i>购买</a>
							</p>
						</div>
					</div>
				</td>
				<td>
					<div class="thumbnail">
						<img src="img/f5.png" alt="...">
						<div class="caption">
							<h4>label</h4>

							<p>
								<a href="#" class="btn btn-default" role="button"><i
									class="iconfont">&#xe6a8;</i>加入购物车</a> <a href="#"
									class="btn btn-primary" role="button"><i class="iconfont">&#xe6b4;</i>购买</a>
							</p>
						</div>
					</div>
				</td>
				<td>
					<div class="thumbnail">
						<img src="img/f5.png" alt="...">
						<div class="caption">
							<h4>label</h4>
							<p>
								<a href="#" class="btn btn-default" role="button"><i
									class="iconfont">&#xe6a8;</i>加入购物车</a> <a href="#"
									class="btn btn-primary" role="button"><i class="iconfont">&#xe6b4;</i>购买</a>
							</p>
						</div>
					</div>
				</td>
				<td>
					<div class="thumbnail">
						<img src="img/f5.png" alt="...">
						<div class="caption">
							<h4>label</h4>
							<p>
								<a href="#" class="btn btn-default" role="button"><i
									class="iconfont">&#xe6a8;</i>加入购物车</a> <a href="#"
									class="btn btn-primary" role="button"><i class="iconfont">&#xe6b4;</i>购买</a>
							</p>
						</div>
					</div>
				</td>

			</tr>
			<tr>
				<td>
					<div class="thumbnail">
						<img src="img/f5.png" alt="...">
						<div class="caption">
							<h4>label</h4>

							<p>
								<a href="#" class="btn btn-default" role="button"><i
									class="iconfont">&#xe6a8;</i>加入购物车</a> <a href="#"
									class="btn btn-primary" role="button"><i class="iconfont">&#xe6b4;</i>购买</a>
							</p>
						</div>
					</div>
				</td>
				<td>
					<div class="thumbnail">
						<img src="img/f5.png" alt="...">
						<div class="caption">
							<h4>label</h4>

							<p>
								<a href="#" class="btn btn-default" role="button"><i
									class="iconfont">&#xe6a8;</i>加入购物车</a> <a href="#"
									class="btn btn-primary" role="button"><i class="iconfont">&#xe6b4;</i>购买</a>
							</p>
						</div>
					</div>
				</td>
				<td>
					<div class="thumbnail">
						<img src="img/f5.png" alt="...">
						<div class="caption">
							<h4>label</h4>

							<p>
								<a href="#" class="btn btn-default" role="button"><i
									class="iconfont">&#xe6a8;</i>加入购物车</a> <a href="#"
									class="btn btn-primary" role="button"><i class="iconfont">&#xe6b4;</i>购买</a>
							</p>
						</div>
					</div>
				</td>
				<td>
					<div class="thumbnail">
						<img src="img/f5.png" alt="...">
						<div class="caption">
							<h4>label</h4>
							<p>
								<a href="#" class="btn btn-default" role="button"><i
									class="iconfont">&#xe6a8;</i>加入购物车</a> <a href="#"
									class="btn btn-primary" role="button"><i class="iconfont">&#xe6b4;</i>购买</a>
							</p>
						</div>
					</div>
				</td>
				<td>
					<div class="thumbnail">
						<img src="img/f5.png" alt="...">
						<div class="caption">
							<h4>label</h4>
							<p>
								<a href="#" class="btn btn-default" role="button"><i
									class="iconfont">&#xe6a8;</i>加入购物车</a> <a href="#"
									class="btn btn-primary" role="button"><i class="iconfont">&#xe6b4;</i>购买</a>
							</p>
						</div>
					</div>
				</td>
			</tr> -->
		
</body>
</html>
