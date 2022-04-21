<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="SocialChef - Social Recipe HTML Template" />
<meta name="description"
	content="SocialChef - Social Recipe HTML Template">
<meta name="author" content="themeenergy.com">

<title>SocialChef</title>


<link rel="stylesheet" href="resources/css/icons.css" />
<link rel="stylesheet" href="resources/css/style.css" />
		
<link
	href="http://fonts.googleapis.com/css?family=Raleway:400,300,500,600,700,800"
	rel="stylesheet">
<script src="https://use.fontawesome.com/e808bf9397.js"></script>
<link rel="shortcut icon" href="resources/images/favicon.ico" />

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	  <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]-->



<!-- 해당 페이지의 헤더 탭에 색깔이 들어오도록 해주는 js. 헤더의 li에 준 id를 addClass앞의 괄호에만 넣어주세요 -->
<script src="//code.jquery.com/jquery-3.3.1.min.js"></script>
<script>
	$(document).ready(function() {
		$('#Home').addClass('current-menu-item');
	});
</script>
<style type="text/css">
.three-fourth{
width: 100%;

}
</style>
</head>
<body class="home">

	<!--preloader-->
	<div class="preloader">
		<div class="spinner"></div>
	</div>
	<!--//preloader-->
<!--header-->
	<header class="head" role="banner">
		<!--wrap-->
		<div class="wrap clearfix">
			<a href="index.html" title="SocialChef" class="logo"><img src="resources/images/ico/logo.png" alt="SocialChef logo" /></a>
			
			<nav class="main-nav" role="navigation" id="menu">
				<ul>
					<li class="current-menu-item"><a href="index.html" title="Home"><span>Home</span></a></li>
					<li><a href="recipes.html" title="Recipes"><span>Recipes</span></a>
						<ul>
							<li><a href="recipes2.html" title="Recipes 2">Recipes 2</a></li><li><a href="recipe.html" title="Recipe">Recipe</a></li>
						</ul>
					</li>
					<li><a href="blog.html" title="Blog"><span>Blog</span></a>
						<ul>
							<li><a href="blog_single.html" title="Blog post">Blog post</a></li>
						</ul>
					</li>
					<li><a href="#" title="Pages"><span>Pages</span></a>
						<ul>
							<li><a href="left_sidebar.html" title="Left sidebar page">Left sidebar page</a></li>
							<li><a href="right_sidebar.html" title="Right sidebar page">Right sidebar page</a></li>
							<li><a href="two_sidebars.html" title="Both sidebars page">Both sidebars page</a></li>
							<li><a href="full_width.html" title="Full width page">Full width page</a></li>
							<li><a href="login.html" title="Login page">Login page</a></li><li><a href="register.html" title="Register page">Register page</a></li>
							<li><a href="error404.html" title="Error page">Error page</a></li>
						</ul>
					</li>
					<li><a href="#" title="Features"><span>Features</span></a>
						<ul>
							<li><a href="icons.html" title="Icons">Icons</a></li>
							<li><a href="grid.html" title="Grid">Grid</a></li>
							<li><a href="shortcodes.html" title="Shortcodes">Shortcodes</a></li>
							<li><a href="pricing.html" title="Pricing tables">Pricing tables</a></li>
						</ul>
					</li>
					<li><a href="contact.html" title="Contact"><span>Contact</span></a></li>
					<li><a href="http://themeforest.net/item/socialchef-social-recipe-html-template/8568727?ref=themeenergy" title="Buy now"><span>Buy now</span></a></li>
				</ul>
			</nav>
			
			<nav class="user-nav" role="navigation">
				<ul>
					<li class="light"><a href="find_recipe.html" title="Search for recipes"><i class="icon icon-themeenergy_search"></i> <span>Search for recipes</span></a></li>
					<li class="medium"><a href="/mpg/VgMpgMain.do" title="My account"><i class="icon icon-themeenergy_chef-hat"></i> <span>My account</span></a></li>
					<li class="dark"><a href="submit_recipe.html" title="Submit a recipe"><i class="icon icon-themeenergy_fork-spoon"></i> <span>Submit a recipe</span></a></li>
				</ul>
			</nav>
		</div>
	</header>
	<!--//header-->
	

	<!--main-->
	<main class="main" role="main" style="margin-top: 250px;">
		<!--intro-->
		<!-- <div class="intro">
			<figure class="bg">
				<img src="resources/images/intro.jpg" alt="" />
			</figure>
		</div> -->
		<!--//intro-->

		<!--wrap-->
		<div class="wrap clearfix">
			<!--row-->
			<div class="row">


				<!--content-->
				<section class="content three-fourth">


					<!--cwrap-->
					<div class="cwrap">
						<header class="s-title">
							<h2 class="ribbon bright">오늘의 레시피</h2>
						</header>

						<!--entries-->
						<div class="entries row">
							<!--item-->
							<div class="entry one-third" style="width:33.3%">
								<figure>
									<img src="resources/images/img.jpg" alt="" />
									<figcaption>
										<a href="VgRcpDtail.jsp"><i
											class="icon icon-themeenergy_eye2"></i> <span>View
												recipe</span></a>
									</figcaption>
								</figure>
								<div class="container">
									<h2>
										<a href="VgRcpDtail.jsp">Thai fried rice with fruit and
											vegetables</a>
									</h2>
									<div class="actions">
										<div>
											<div class="difficulty">
												
											</div>
											<div class="likes">
												<i class="fa fa-heart"></i><a href="#">10</a>
											</div>
											<div class="comments">
												<i class="fa fa-comment"></i><a
													href="VgRcpDtail.jsp#comments">27</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--item-->

							<!--item-->
							<div class="entry one-third" style="width:33.3%">
								<figure>
									<img src="resources/images/img.jpg" alt="" />
									<figcaption>
										<a href="VgRcpDtail.jsp"><i
											class="icon icon-themeenergy_eye2"></i> <span>View
												recipe</span></a>
									</figcaption>
								</figure>
								<div class="container">
									<h2>
										<a href="VgRcpDtail.jsp">Spicy Morroccan prawns with
											cherry tomatoes</a>
									</h2>
									<div class="actions">
										<div>
											<div class="difficulty">
												
											</div>
											<div class="likes">
												<i class="fa fa-heart"></i><a href="#">10</a>
											</div>
											<div class="comments">
												<i class="fa fa-comment"></i><a
													href="VgRcpDtail.jsp#comments">27</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--item-->

							<!--item-->
							<div class="entry one-third" style="width:33.3%">
								<figure>
									<img src="resources/images/img.jpg" alt="" />
									<figcaption>
										<a href="VgRcpDtail.jsp"><i
											class="icon icon-themeenergy_eye2"></i> <span>View
												recipe</span></a>
									</figcaption>
								</figure>
								<div class="container">
									<h2>
										<a href="VgRcpDtail.jsp">Super easy blueberry cheesecake</a>
									</h2>
									<div class="actions">
										<div>
											<div class="difficulty">
												
											</div>
											<div class="likes">
												<i class="fa fa-heart"></i><a href="#">10</a>
											</div>
											<div class="comments">
												<i class="fa fa-comment"></i><a
													href="VgRcpDtail.jsp#comments">27</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--item-->



						</div>
						<!--//entries-->
					</div>
					<!--//cwrap-->
					
					<!--cwrap-->
					<div class="cwrap">
						<header class="s-title">
							<h2 class="ribbon bright">베스트 레시피</h2>
						</header>

						<!--entries-->
						<div class="entries row">
							<!--item-->
							<div class="entry one-third" style="width:33.3%">
								<figure>
									<img src="resources/images/img.jpg" alt="" />
									<figcaption>
										<a href="VgRcpDtail.jsp"><i
											class="icon icon-themeenergy_eye2"></i> <span>View
												recipe</span></a>
									</figcaption>
								</figure>
								<div class="container">
									<h2>
										<a href="VgRcpDtail.jsp">Thai fried rice with fruit and
											vegetables</a>
									</h2>
									<div class="actions">
										<div>
											<div class="difficulty">
												
											</div>
											<div class="likes">
												<i class="fa fa-heart"></i><a href="#">10</a>
											</div>
											<div class="comments">
												<i class="fa fa-comment"></i><a
													href="VgRcpDtail.jsp#comments">27</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--item-->

							<!--item-->
							<div class="entry one-third" style="width:33.3%">
								<figure>
									<img src="resources/images/img.jpg" alt="" />
									<figcaption>
										<a href="VgRcpDtail.jsp"><i
											class="icon icon-themeenergy_eye2"></i> <span>View
												recipe</span></a>
									</figcaption>
								</figure>
								<div class="container">
									<h2>
										<a href="VgRcpDtail.jsp">Spicy Morroccan prawns with
											cherry tomatoes</a>
									</h2>
									<div class="actions">
										<div>
											<div class="difficulty">
												
											</div>
											<div class="likes">
												<i class="fa fa-heart"></i><a href="#">10</a>
											</div>
											<div class="comments">
												<i class="fa fa-comment"></i><a
													href="VgRcpDtail.jsp#comments">27</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--item-->

							<!--item-->
							<div class="entry one-third" style="width:33.3%">
								<figure>
									<img src="resources/images/img.jpg" alt="" />
									<figcaption>
										<a href="VgRcpDtail.jsp"><i
											class="icon icon-themeenergy_eye2"></i> <span>View
												recipe</span></a>
									</figcaption>
								</figure>
								<div class="container">
									<h2>
										<a href="VgRcpDtail.jsp">Super easy blueberry cheesecake</a>
									</h2>
									<div class="actions">
										<div>
											<div class="difficulty">
												
											</div>
											<div class="likes">
												<i class="fa fa-heart"></i><a href="#">10</a>
											</div>
											<div class="comments">
												<i class="fa fa-comment"></i><a
													href="VgRcpDtail.jsp#comments">27</a>
											</div>
										</div>
									</div>
								</div>
							</div>
							<!--item-->



						</div>
						<!--//entries-->
					</div>
					<!--//cwrap-->
					


					<!--cwrap-->
					<div class="cwrap">
						<header class="s-title">
							<h2 class="ribbon bright">최신글</h2>
						</header>
						<!--entries-->
						<div class="entries row">
							<!--item-->
							<div class="entry one-third" style="width:33.3%">
								<figure>
									<img src="resources/images/img.jpg" alt="" />
									<figcaption>
										<a href="VgMktDtail.jsp"><i
											class="icon icon-themeenergy_eye2"></i> <span>View
												product</span></a>
									</figcaption>
								</figure>
								<div class="container">
									<h2>
										<a href="blog_single.jsp">Barbeque party</a>
									</h2>
									<div class="actions">
										<div>
											<div class="date">
												<i class="fa fa-calendar"></i><a href="#">22 Dec 2014</a>
											</div>
											<div class="comments">
												<i class="fa fa-comment"></i><a
													href="blog_single.jsp#comments">27</a>
											</div>
										</div>
									</div>
									<div class="excerpt">
										<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
											elit, sed diam nonummy nibh euismod. Lorem ipsum dolor sit
											amet . . .</p>
									</div>
								</div>
							</div>
							<!--item-->

							<!--item-->
							<div class="entry one-third" style="width:33.3%">
								<figure>
									<img src="resources/images/img.jpg" alt="" />
									<figcaption>
										<a href="VgMktDtail.jsp"><i
											class="icon icon-themeenergy_eye2"></i> <span>View
												product</span></a>
									</figcaption>
								</figure>
								<div class="container">
									<h2>
										<a href="blog_single.jsp">How to make sushi</a>
									</h2>
									<div class="actions">
										<div>
											<div class="date">
												<i class="fa fa-calendar"></i><a href="#">22 Dec 2014</a>
											</div>
											<div class="comments">
												<i class="fa fa-comment"></i><a
													href="blog_single.jsp#comments">27</a>
											</div>
										</div>
									</div>
									<div class="excerpt">
										<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
											elit, sed diam nonummy nibh euismod. Lorem ipsum dolor sit
											amet . . .</p>
									</div>
								</div>
							</div>
							<!--item-->

							<!--item-->
							<div class="entry one-third" style="width:33.3%">
								<figure>
									<img src="resources/images/img.jpg" alt="" />
									<figcaption>
										<a href="VgMktDtail.jsp"><i
											class="icon icon-themeenergy_eye2"></i> <span>View
												product</span></a>
									</figcaption>
								</figure>
								<div class="container">
									<h2>
										<a href="blog_single.jsp">Make your own bread</a>
									</h2>
									<div class="actions">
										<div>
											<div class="date">
												<i class="fa fa-calendar"></i><a href="#">22 Dec 2014</a>
											</div>
											<div class="comments">
												<i class="fa fa-comment"></i><a
													href="blog_single.jsp#comments">27</a>
											</div>
										</div>
									</div>
									<div class="excerpt">
										<p>Lorem ipsum dolor sit amet, consectetuer adipiscing
											elit, sed diam nonummy nibh euismod. Lorem ipsum dolor sit
											amet . . .</p>
									</div>
								</div>
							</div>
							<!--item-->


						</div>
						<!--//entries-->
					</div>
					<!--//cwrap-->

				
				</section>
				<!--//content-->










			</div>
			<!--//wrap-->
	</main>
	<!--//main-->


	<!--//call to action-->


	<!--footer-->
	<footer class="foot" role="contentinfo">
		<div class="wrap clearfix">
			<div class="row">
				<article class="one-half">
					<h5>About SocialChef Community</h5>
					<p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci.</p>
				</article>
				<article class="one-fourth">
					<h5>Need help?</h5>
					<p>Contact us via phone or email</p>
					<p><em>T:</em>  +1 555 555 555<br /><em>E:</em>  <a href="#">socialchef@email.com</a></p>
				</article>
				<article class="one-fourth">
					<h5>Follow us</h5>
					<ul class="social">
						<li><a href="#" title="facebook"><i class="fa fa-fw fa-facebook"></i></a></li>
						<li><a href="#" title="youtube"><i class="fa  fa-fw fa-youtube"></i></a></li>
						<li><a href="#" title="rss"><i class="fa  fa-fw fa-rss"></i></a></li>
						<li><a href="#" title="gplus"><i class="fa fa-fw fa-google-plus"></i></a></li>
						<li><a href="#" title="linkedin"><i class="fa fa-fw fa-linkedin"></i></a></li>
						<li><a href="#" title="twitter"><i class="fa fa-fw fa-twitter"></i></a></li>
						<li><a href="#" title="pinterest"><i class="fa fa-fw fa-pinterest-p"></i></a></li>
						<li><a href="#" title="vimeo"><i class="fa fa-fw fa-vimeo"></i></a></li>
					</ul>
				</article>
				
				<div class="bottom">
					<p class="copy">Copyright 2016 SocialChef. All rights reserved</p>
					
					<nav class="foot-nav">
						<ul>
							<li><a href="index.html" title="Home">Home</a></li>
							<li><a href="recipes.html" title="Recipes">Recipes</a></li>
							<li><a href="blog.html" title="Blog">Blog</a></li>
							<li><a href="contact.html" title="Contact">Contact</a></li>    
							<li><a href="find_recipe.html" title="Search for recipes">Search for recipes</a></li>
							<li><a href="/usr/VgUsrLogin.do" title="Login">Login</a></li>	<li><a href="/usr/VgUsrRegst.do" title="Register">Register</a></li>													
						</ul>
					</nav>
				</div>
			</div>
		</div>
	</footer>


	<script src="resources/js/jquery-3.1.0.min.js"></script>
	<script src="resources/js/jquery.uniform.min.js"></script>
	<script src="resources/js/jquery.slicknav.min.js"></script>
	<script src="resources/js/scripts.js"></script>
	<script src="resources/js/home.js"></script>
</body>
</html>

