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
				<!-- 메인, 커뮤니티 링크 -->
					<li><a href="VgMain.do" title="Home">메인</a></li>
					<li><a href="VgCmuList.do" title="Blog">커뮤니티</a></li>
					<li>커뮤니티 등록</li>
				</ul>
			</nav>
			<!--//breadcrumbs-->
			
			<!--row-->
			<div class="row">
				<header class="s-title">
					<h1>커뮤니티 글 작성</h1>
				</header>
								
				<!--content-->
				<section class="content three-fourth">
					<!--blog entry-->
					<article class="post single">
					<form name="cmuregstform" method="post" action="cmu_write.do">
					<div class="cmucate cumtitle" style="padding-bottom: 5px;">
						<select id="CMU_CATE" name="CMU_CATE" required>
						<option disabled selected style="display: none;">카테고리</option>
						<option value="공지">공지</option> <!-- 유저가 관리자일 때 -->
						<option value="채식소식">채식소식</option>
						<option value="동네맛집">동네맛집</option>
						<option value="일상소식">일상소식</option>
						<option value="운동/건강">운동/건강</option>
						<option value="취미생활">취미생활</option>
						</select>
					</div>
					<div class="cmucon cumtitle">
						<p><input  type="text" id="CMU_TITLE" name="CMU_TITLE" placeholder="제목을 적어주세요." /></p>
					</div>					
					<div>
						<textarea id = "CMU_CONTENT" name = "CMU_CONTENT"></textarea>
						<script>CKEDITOR.replace('CMU_CONTENT',{filebrowserUploadUrl:'/cmu/imageupload.do', height: 500, width: 1000 });</script>
					</div>							
					<div class="f-row" style="padding-top: 20px;">
						<div class="third bwrap">
							<input type="submit" value="글 작성" />
						</div>
						<div class ="cmurlink" style="padding: 10px 0px 20px;">
						<!-- 목록가는 링크 -->
						<a class="R-rlink" href="VgCmuList.do"> 게시글 목록 가기 </a>
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


