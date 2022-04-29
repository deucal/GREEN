<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="keywords" content="SocialChef - Social Recipe HTML Template" />
	<meta name="description" content="SocialChef - Social Recipe HTML Template">
	<meta name="author" content="themeenergy.com">
	
	<title>SocialChef</title>
	
	<link rel="stylesheet" href="/resources/css/style.css" />
	<link rel="stylesheet" href="/resources/css/icons.css" />
	<link href="http://resources/fonts.googleapis.com/css?family=Raleway:400,300,500,600,700,800" rel="stylesheet">
	<script src="https://use.fontawesome.com/e808bf9397.js"></script>
	<script src="/resources/js/cmu_comment.js"></script>	
	<link rel="shortcut icon" href="/resources/images/favicon.ico" />
	<style type="text/css">
		.three-fourth {width: 100%;}
		.cmurlink{display: block; align: center;}
		.cmurlink .R-rlink {cursor: pointer;  padding: 11px 14px; background: #fff; color: #FF7B74; border-radius: 3px;}		
		.one-third {width: 25%}
		

	</style>
	<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	  <script src="https://oss.maxcdn.com/libs/respond.js1.3.0/respond.min.js"></script>
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
					<!-- 메인 가는 링크 -->
					<li><a href="VgMain.jsp" title="Home">메인</a></li>
					<li>커뮤니티</li>
				</ul>
			</nav>
			<!--//breadcrumbs-->
			
			<!--row-->
			<div class="row">
				<header class="s-title">
					<h1 style="padding: 0px 15px 60px;">커뮤니티 게시판</h1>
				</header>
				<div style="padding-bottom: 5px; float:left;">
					<button class="button" name="category" value="전체" style="margin-right:10px;"><span>전체</span></button>
	          		<button class="button" value="공지" style="margin-right:10px;"><span>공지</span></button>
	          		<button class="button" value="채식소식" style="margin-right:10px;"><span>채식소식</span></button>
	          		<button class="button" value="동네맛집" style="margin-right:10px;"><span>동네맛집</span></button>
	          		<button class="button" value="일상소식" style="margin-right:10px;"><span>일상소식</span></button>
	          		<button class="button" value="운동/건강" style="margin-right:10px;"><span>운동/건강</span></button>
	          		<button class="button" value="취미생활" style="margin-right:10px;"><span>취미생활</span></button>
						</div>
				<form>
					<div class="form-group row justify-content-center" style="width:490px; padding: 0px 15px 20px; float:right;">			
						<div style="width:100px; padding:0px 3px 20px 0px; float:left;">
							<select class="form-control form-control-sm" name="searchtype"
								id="searchtype" >
								<option value="CMU_TITLE">제목</option>
								<option value="CMU_CONTENT">본문</option>
								<option value="USR_ID">작성자</option>
							</select>
						</div>
						<div style="width:300px; padding: 0px 3px 20px 0px; float:left;">
							<input type="text"
								<%-- value="${pagination.keyword}" --%> class="form-control form-control-sm"
								name="keyword" id="keyword"  placeholder="검색어를 입력하세요">
						</div>
						<div>
							<input type="submit" name="btnSearch"
								id="btnSearch" value="검색" style="float:left; height:35px;"/>
						</div>
	          		</div>
          		</form>
				<!--content-->
				<section class="content three-fourth">
				<form method="get" id="listForm" action="/cmu/VgCmuList">

					<!-- 커뮤니티 리스트 갯수 반복문 -->	
 					<c:forEach items="${cmupagelist}" var="cmuvo">
						<div class="entry one-third">
							<figure>
								<img src="/resources/images/img.jpg" alt="" />
								<!-- 상세 페이지 가는 링크 -->
								<figcaption><a href="/cmu/VgCmuDtail.do?CMU_PK=${cmuvo.CMU_PK}"><i class="icon icon-themeenergy_eye2"></i> <span>글보기</span></a></figcaption>
							</figure>
							<div class="container">
								<!-- 상세 페이지 가는 링크 -->
								<h2><a href="/cmu/VgCmuDtail.do?CMU_PK=${cmuvo.CMU_PK}">${cmuvo.CMU_TITLE}</a></h2> 
								<div class="actions">
									<div>
										<div class="difficulty" style="width: 200px;border-right: none !important;"><i class="ico i-medium"></i><a href="#">${cmuvo.USR_ID}</a></div>
										<div class="comments"><i class="fa fa-comment"></i><a href="#">${cmuvo.CMU_COM}</a></div>
										<div class="likes"><i class="fa fa-heart"></i><a href="#">${cmuvo.CMU_LIKE}</a></div>								
									</div>
								</div>
							</div>
						</div>	
					</c:forEach>
					<!-- 페이징 -->
					</form>
					<div class ="cmurlink" style="padding: 0px 15px 20px;">
						<!-- 글 작성가는 링크 -->
						<a class="R-rlink" href="VgCmuRegst.do"> 게시글 작성 </a>
					</div>
					<div id="paginationBox" class="pagination1">
						<div class="pager">
							<c:if test="${pagination.prev}">
								<a class="page-link" href="#" onClick="fn_prev('${pagination.page}', '${pagination.range}', '${pagination.rangesize}', '${pagination.listsize}'
									,'${search.searchtype}', '${search.keyword}')">&lt;</a>
							</c:if>
										
							<c:forEach begin="${pagination.startpage}" end="${pagination.endpage}" var="CMU_PK">	
								<div class="<c:out value="${pagination.page == CMU_PK ? 'active' : ''}"/>">
								<a class="page-link" href="#" onClick="fn_pagination('${CMU_PK}', '${pagination.range}', '${pagination.rangesize}', '${pagination.listsize}',
								'${search.searchtype}', '${search.keyword}')" > ${CMU_PK} </a></div>
							</c:forEach>
				
							<c:if test="${pagination.next}">
								<a class="page-link" href="#" onClick="fn_next('${pagination.page}', '${pagination.range}', '${pagination.rangesize}', '${pagination.listsize}'
									,'${search.searchtype}', '${search.keyword}')">&gt;</a>
							</c:if>
						</div>
					</div>
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

