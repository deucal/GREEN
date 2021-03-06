<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="ko">
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="SocialChef - Social Recipe HTML Template" />
	<meta name="description" content="SocialChef - Social Recipe HTML Template">
	<meta name="author" content="themeenergy.com">
	
	<title>Vegcipe</title>
	
	<link rel="stylesheet" href="/resources/css/style.css" />
	<link rel="stylesheet" href="/resources/css/icons.css" />
	<link href="http://resources/fonts.googleapis.com/css?family=Raleway:400,300,500,600,700,800" rel="stylesheet">
	<script src="https://use.fontawesome.com/e808bf9397.js"></script>
	<link rel="shortcut icon" href="/resources/images/favicon.ico" />

	<script src="//cdn.ckeditor.com/4.17.1/full/ckeditor.js"></script>
	<script src="/resources/js/cmu_comment.js"></script>

	<style type="text/css">
		.post .container-cmu {width:100%;}
		.three-fourth {width: 100%;}
		
		.cmurlink{display: block; align: center;}
		.cmurlink .R-rlink {cursor: pointer;  padding: 11px 14px; background: #fff; color: #49A54C; border-radius: 3px;}
		.post .container {float:left; width: 1079px !important; padding:0; border-radius: 3px;}
		.three-fourth {padding-bottom: 0px;}
		.note-toolbar-wrapper { height: auto !important; }
		.cke_reset{ min-height:600px; }
		#cke_CMU_CONTENT {width: 100% !important;}
	</style>

  <!--  -->
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	  <script src="https://oss.maxcdn.com/libs/respond.js/1.3.0/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<!--preloader-->
	<div class="preloader">
		<div class="spinner"></div>
	</div>
	<!--//preloader-->
	
	<!--header-->
	<%@ include file="../../../Header.jsp" %>
	<div style="padding-top: 200px"></div>   
	<!--//header-->
		
	<!--main-->
	<main class="main" role="main">
		<!--wrap-->
		<div class="wrap clearfix">
			<!--breadcrumbs-->
			<nav class="breadcrumbs">
				<ul>
				<!-- ??????, ???????????? ?????? -->
					<li><a href="VgMain.do" title="Home">??????</a></li>
					<li><a href="VgCmuList.do" title="Blog">????????????</a></li>
					<li>???????????? ??????</li>
				</ul>
			</nav>
			<!--//breadcrumbs-->
			
			<!--row-->
			<div class="row">
				<header class="s-title">
					<h1>???????????? ??? ??????</h1>
				</header>
								
				<!--content-->
				<section class="content three-fourth">
					<!--blog entry-->
					<article class="post single">
					<form name="cmuregstform" method="post" action="cmu_write.do">
					<div class="cmucate cumtitle" style="padding-bottom: 5px;">
						<select id="CMU_CATE" name="CMU_CATE" required>
						<option disabled selected style="display: none;">????????????</option>
						<option value="??????">??????</option> <!-- ????????? ???????????? ??? -->
						<option value="????????????">????????????</option>
						<option value="????????????">????????????</option>
						<option value="????????????">????????????</option>
						<option value="??????/??????">??????/??????</option>
						<option value="????????????">????????????</option>
						</select>
					</div>
					<div class="cmucon cumtitle">
						<p><input  type="text" id="CMU_TITLE" name="CMU_TITLE" placeholder="????????? ???????????????." /></p>
					</div>					
					<div>
						<textarea id = "CMU_CONTENT" name = "CMU_CONTENT"></textarea>
						<script>CKEDITOR.replace('CMU_CONTENT',{filebrowserUploadUrl:'/cmu/imageupload.do', height: 500, width: 1000 });</script>
					</div>							
					<div class="f-row" style="padding-top: 20px;">
						<div class="third bwrap">
							<input type="submit" value="??? ??????" />
						</div>
						<div class ="cmurlink" style="padding: 10px 0px 20px;">
						<!-- ???????????? ?????? -->
						<a class="R-rlink" href="VgCmuList.do"> ????????? ?????? ?????? </a>
						</div>
					</div>
					</form>
					</article>
					<!--//blog entry-->

					<!--//respond-->
				</section>
				<!--//content-->			
			</div>
			<!--//row-->
		</div>
		<!--//wrap-->
	</main>
	<!--//main-->
	
	<!--footer-->
	<%@ include file="../../../Footer.jsp" %>
	<!--//footer-->
	
	<script src="/resources/js/jquery-3.1.0.min.js"></script>
	<script src="/resources/js/jquery.uniform.min.js"></script>
	<script src="/resources/js/jquery.slicknav.min.js"></script>
	<script src="/resources/js/scripts.js"></script>
	
</body>
</html>


