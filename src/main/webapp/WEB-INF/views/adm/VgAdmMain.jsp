<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jstl/core_rt" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta name="keywords" content="SocialChef - Social Recipe HTML Template" />
<meta name="description"
	content="SocialChef - Social Recipe HTML Template">
<meta name="author" content="themeenergy.com">

<title>Vegcipe</title>

<link rel="stylesheet" href="/resources/css/style.css" />
<link rel="stylesheet" href="/resources/css/icons.css" />
<link
	href="http://fonts.googleapis.com/css?family=Raleway:400,300,500,600,700,800"
	rel="stylesheet">
<script src="/resources/js/jquery-3.1.0.min.js"></script>
<script src="https://use.fontawesome.com/e808bf9397.js"></script>
<script src="//cdn.ckeditor.com/4.17.1/full/ckeditor.js"></script>
<script src="/resources/js/vg_admin_main.js"></script>
<link rel="shortcut icon" href="/resources/images/favicon.ico" />
<style type="text/css">
.tab-content .basic dt {
	width: 25%;
	height: 38px;
	line-height: 40px;
}

.tab-content .basic dd {
	width: 45%;
	height: 38px;
	line-height: 38px;
}

.two-third {
	float: left;
	width: 100%;
	padding: 0 15px 30px;
	max-width: 100%;
}

.user-nav {
	float: right;
	position: absolute;
	top: 0;
	right: 0;
}

@media ( max-width : 1240px) {
	#about .one-third, #about .two-third {
		width: 100%;
	}
}



.tabs li {	
	width: 33.3%;
/* 	display: inline-block; */
}

.tabs-div{

}

td {
	padding-left: 10px !important;
	padding-right: 10px !important;
}

.tab-content{
/*  	display: block !important; */

}

</style>

<!-- HTML5 Shim and Respond.js IE8 support of HTML5 elements and media queries -->
<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
<!--[if lt IE 9]>
	  <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
	  <script src="https://oss.maxcdn.com/libs/respond.resources/js/1.3.0/respond.min.js"></script>
	<![endif]-->
</head>
<body>
	<!--preloader-->
	<div class="preloader">
		<div class="spinner"></div>
	</div>
	<!--//preloader-->

	<%@ include file="../../../Header.jsp" %>
	<div style="padding-top: 200px"></div>
	<!--main-->
	<main class="main" role="main">
		<!--wrap-->
		<div class="wrap clearfix">
			<!--breadcrumbs-->
			<nav class="breadcrumbs">
				<ul>
					<li><a href="VgMain.jsp" title="Home">?????????</a></li>
					<li>??????????????????</li>
				</ul>
			</nav>
			<!--//breadcrumbs-->

			<!--content-->
			
			<section class="content">
				<!--row-->
				<div class="row">
				
<!-- 					<div class="three-fourth" > -->
<!-- 					  <div class="tabs-div">
						<nav class="tabs">
							<ul>
								<li class="active"><a href="#about" title="About me">????????????</a></li>
								<li class="active"><a href="#recipes" title="My recipes">????????? ??????</a></li>
								<li class="active"><a href="#posts" title="My posts">???????????? ??????</a></li>

							</ul>
							</nav>
						</div> -->
						
						
					<div class="tabs-div">
						<nav class="tabs">
						<ul>
							<li class="active admin_list"><a href="#about" title="About me">????????????</a></li>
							<li class="active admin_list"><a href="#recipes" title="My recipes">????????? ??????</a></li>
							<li class="active admin_list"><a href="#posts" title="My posts">???????????? ??????</a></li>

						</ul>
						</nav>
					</div>
								
				
					<div class="three-fourth" >
						<!--about-->
						<div class="tab-content" id="about">
							<div style="width: 1170px">
								<table style="width:90%; margin: auto;">
									<th style="text-align: center">??????</th>
									<th style="text-align: center">?????????</th>
									<th style="text-align: center">??????</th>
									<th style="text-align: center">????????????</th>
									<th style="text-align: center">????????????</th>
									<th style="text-align: center">????????????</th>
									<th style="text-align: center">????????????</th>
					
									<form method="get" id="userinfo_ad_ajax" action="/adm/VgAdmMain.do">
										<c:forEach items="${AUSR }" var="vo" varStatus="status">			
											<tr>			
												<td style="width:95px"><input type="textarea" class="USR_NAME" value="${vo.USR_NAME }" style="width: 100%; padding-left: 0; padding-right: 0;">
												<input type="hidden" class="USR_ID" value="${vo.USR_ID}"></td>
												<td style="width:150px"><input type="textarea" class="USR_EMAIL" value="${vo.USR_EMAIL }" style="width: 100%; padding-left: 0; padding-right: 0;"></td>
												<td style="width:300px"><span class="text1">${vo.USR_ADDR2 }</span>
												<input type="button" onclick="sample6_execDaumPostcode('${status.index}')" value="?????? ??????" style="height:24px; background: none !important; border:none !important; float:right; color: #444; padding-bottom: 5px; padding-top: 5px;">
												<input type="hidden"  class="sample6_postcode USR_ADDR1" value="${vo.USR_ADDR1 }"/>
												<input type="hidden" class="sample6_address USR_ADDR2" value="${vo.USR_ADDR2 }">
												<input type="text"  class="sample6_detailAddress USR_ADDR3" placeholder="????????????" value="${vo.USR_ADDR3 }">
												<input type="hidden" class="sample6_extraAddress" placeholder="????????????">
												</td>
												<td style="width:140px"><input type="textarea" class="USR_TEL" value="${vo.USR_TEL }" style="width: 100%; padding-left: 0; padding-right: 0;"></td>
												<td style="width:140px">${vo.USR_DATE }</td>							
												<td style="width:110px;"><input type="button"  onclick="submit_item('${status.index}')" style="width: 100%; padding-left: 0; padding-right: 0; background: none !important; border:none !important; color: #444;" value="??????"></td>
											  	<td style="width:110px;"><a type="button" style="width: 100%; padding-left: 0; padding-right: 0; background: none !important; border:none !important; color: #444;"
											  	href="delete_usr_info.do?USR_ID=${vo.USR_ID}&USR_PW=${vo.USR_PW}">??????</a></td>
											</tr>
										</c:forEach>	
									</form>
								
							
									<form method="post" action="/adm/ChangeUsrInfo.do" name=form>
										<input type="hidden" id="FS_USR_ID" name="USR_ID">
										<input type="hidden" id="FS_USR_EMAIL" name="USR_EMAIL">
										<input type="hidden" id="FS_USR_NAME" name="USR_NAME">
										<input type="hidden" id="FS_USR_PW" name="USR_PW">
										<input type="hidden" id="FS_USR_ADDR1" name="USR_ADDR1">
										<input type="hidden" id="FS_USR_ADDR2" name="USR_ADDR2">
										<input type="hidden" id="FS_USR_ADDR3" name="USR_ADDR3">
										<input type="hidden" id="FS_USR_TEL" name="USR_TEL">
									</form>	
								</table>
								
								
								<!-- ????????? ????????? ??? ???????????? ????????? ?????? -->
								<div class="pager">
									<c:if test="${paging_ad.start_page != 1 }">
									<a href="/adm/VgAdmMain.do?now_page=${paging_ad.start_page-1 }&cnt_per_page=${paging_ad.cnt_per_page}">&lt;</a> 
									</c:if>
									<c:forEach begin="${paging_ad.start_page }" end="${paging_ad.end_page }" var="pagenum">
										<c:choose>
											<c:when test="${pagenum == paging_ad.now_page }">
												<a class="current">${pagenum }</a>
											</c:when>
											<c:when test="${pagenum != paging_ad.now_page }">
												<a href="/adm/VgAdmMain.do?now_page=${pagenum }&cnt_per_page=${paging_ad.cnt_per_page}"
													class="paging_num">${pagenum }</a>
											</c:when>
										</c:choose>
									</c:forEach>
									<c:if test="${paging_ad.end_page != paging_ad.last_page}">
										<a
											href="/adm/VgAdmMain.do?now_page=${paging_ad.end_page+1 }&cnt_per_page=${paging_ad.cnt_per_page}">&gt;</a>
									</c:if>
								</div>
								
								
							</div>
						</div>

						<!--//about-->





						<!--my recipes-->
						<div class="tab-content" id="recipes">
							<div style="width: 1170px">
								 
										<form method="get" id="rcp_list_ad_ajax">											
										
														

					<!-- 				???????????? ????????? ??? ????????? ????????? (table)        -->
					<!--                ????????? ????????? ??? ????????? ??? ?????? ????????? ??????        -->				
										

										</form>	


							
<!-- 								<div class="pager"> -->
<%-- 									<c:if test="${paging_ad.start_page != 1 }"> --%>
<%-- 									<a href="/adm/select_rcp_list_ad_ajax.do?now_page=${paging_ad.start_page-1 }&cnt_per_page=${paging_ad.cnt_per_page}">&lt;</a>  --%>
<%-- 									</c:if> --%>
<%-- 									<c:forEach begin="${paging_ad.start_page }" end="${paging_ad.end_page }" var="pagenum"> --%>
<%-- 										<c:choose> --%>
<%-- 											<c:when test="${pagenum == paging_ad.now_page }"> --%>
<%-- 												<a class="current">${pagenum }</a> --%>
<%-- 											</c:when> --%>
<%-- 											<c:when test="${pagenum != paging_ad.now_page }"> --%>
<%-- 												<a href="/adm/select_rcp_list_ad_ajax.do?now_page=${pagenum }&cnt_per_page=${paging_ad.cnt_per_page}" --%>
<%-- 													class="paging_num">${pagenum }</a> --%>
<%-- 											</c:when> --%>
<%-- 										</c:choose> --%>
<%-- 									</c:forEach> --%>
<%-- 									<c:if test="${paging_ad.end_page != paging_ad.last_page}"> --%>
<!-- 										<a -->
<%-- 											href="/adm/select_rcp_list_ad_ajax.do?now_page=${paging_ad.end_page+1 }&cnt_per_page=${paging_ad.cnt_per_page}">&gt;</a> --%>
<%-- 									</c:if> --%>
<!-- 								</div> -->
							</div>
							</div>
						<!--//my recipes-->


						<!--my posts-->
						<div class="tab-content" id="posts">
							<!--entries-->
							<div style="width: 1170px">

					 		<form method="get" id="cmu_list_ad_ajax">		
				<!-- 				???????????? ???????????? ??? ????????? ????????? (table) -->
				<!--                ????????? ????????? ??? ????????? ??? ?????? ????????? ??????  -->	
							</form>	
								

								
<!-- 								<div class="pager"> -->
<%-- 									<c:if test="${paging_ad.start_page != 1 }"> --%>
<%-- 									<a href="/adm/select_cum_list_ad_ajax.do?now_page=${paging_ad.start_page-1 }&cnt_per_page=${paging_ad.cnt_per_page}">&lt;</a>  --%>
<%-- 									</c:if> --%>
<%-- 									<c:forEach begin="${paging_ad.start_page }" end="${paging_ad.end_page }" var="pagenum"> --%>
<%-- 										<c:choose> --%>
<%-- 											<c:when test="${pagenum == paging_ad.now_page }"> --%>
<%-- 												<a class="current">${pagenum }</a> --%>
<%-- 											</c:when> --%>
<%-- 											<c:when test="${pagenum != paging_ad.now_page }"> --%>
<%-- 												<a href="/adm/select_cmu_list_ad_ajax.do?now_page=${pagenum }&cnt_per_page=${paging_ad.cnt_per_page}" --%>
<%-- 													class="paging_num">${pagenum }</a> --%>
<%-- 											</c:when> --%>
<%-- 										</c:choose> --%>
<%-- 									</c:forEach> --%>
<%-- 									<c:if test="${paging_ad.end_page != paging_ad.last_page}"> --%>
<!-- 										<a -->
<%-- 											href="/adm/select_cmu_list_ad_ajax.do?now_page=${paging_ad.end_page+1 }&cnt_per_page=${paging_ad.cnt_per_page}">&gt;</a> --%>
<%-- 									</c:if> --%>
<!-- 								</div> -->
							
							
						</div>
							</div>
							<!--//entries-->
							
						</div>
						<!--//my posts-->
					</div>
				</section>
					
				</div>
				<!--//row-->
	<!-- 		</section> -->
			<!--//content-->


		<!--//wrap-->
	</main>
	<!--//main-->

	<%@ include file="../../../Footer.jsp" %>

	<script src="/resources/js/jquery-3.1.0.min.js"></script>
	<script src="/resources/js/jquery.uniform.min.js"></script>
	<script src="/resources/js/jquery.slicknav.min.js"></script>
	<script src="/resources/js/scripts.js"></script>
	<script src="//t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
	<script>
function submit_item(index) {
		alert("r")
		var USR_ID=document.getElementsByClassName("USR_ID");
		
		var USR_NAME=document.getElementsByClassName("USR_NAME");
		
		var USR_EMAIL=document.getElementsByClassName("USR_EMAIL");
		
		var USR_PW=document.getElementsByClassName("USR_PW");
		
		var USR_ADDR1=document.getElementsByClassName("USR_ADDR1");
		
		var USR_ADDR2=document.getElementsByClassName("USR_ADDR2");
		
		var USR_ADDR3=document.getElementsByClassName("USR_ADDR3");
		
		var USR_TEL=document.getElementsByClassName("USR_TEL");
		
		document.getElementById("FS_USR_ID").value=USR_ID[index].value
		document.getElementById("FS_USR_NAME").value=USR_NAME[index].value
		document.getElementById("FS_USR_EMAIL").value=USR_EMAIL[index].value
		document.getElementById("FS_USR_PW").value=USR_PW[index].value
		document.getElementById("FS_USR_ADDR1").value=USR_ADDR1[index].value
		document.getElementById("FS_USR_ADDR2").value=USR_ADDR2[index].value
		document.getElementById("FS_USR_ADDR3").value=USR_ADDR3[index].value
		document.getElementById("FS_USR_TEL").value=USR_TEL[index].value
		alert("r2")
		document.form.submit();
	}
	
	
	
    function sample6_execDaumPostcode( targetindex ) {
        new daum.Postcode({
            oncomplete: function(data) {
                // ???????????? ???????????? ????????? ??????????????? ????????? ????????? ???????????? ??????.

                // ??? ????????? ?????? ????????? ?????? ????????? ????????????.
                // ???????????? ????????? ?????? ?????? ????????? ??????('')?????? ????????????, ?????? ???????????? ?????? ??????.
                var addr = ''; // ?????? ??????
                var extraAddr = ''; // ???????????? ??????

                //???????????? ????????? ?????? ????????? ?????? ?????? ?????? ?????? ????????????.
                if (data.userSelectedType === 'R') { // ???????????? ????????? ????????? ???????????? ??????
                    addr = data.roadAddress;
                } else { // ???????????? ?????? ????????? ???????????? ??????(J)
                    addr = data.jibunAddress;
                }

                // ???????????? ????????? ????????? ????????? ???????????? ??????????????? ????????????.
                if(data.userSelectedType === 'R'){
                    // ??????????????? ?????? ?????? ????????????. (???????????? ??????)
                    // ???????????? ?????? ????????? ????????? "???/???/???"??? ?????????.
                    if(data.bname !== '' && /[???|???|???]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // ???????????? ??????, ??????????????? ?????? ????????????.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // ????????? ??????????????? ?????? ??????, ???????????? ????????? ?????? ???????????? ?????????.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // ????????? ??????????????? ?????? ????????? ?????????.
                    var extra=document.getElementsByClassName("sample6_extraAddress");
                    extra[targetindex].value = extraAddr;
                
                } else {
                	var extra=document.getElementsByClassName("sample6_extraAddress");
                    extra[targetindex].value = '';
                }

                // ??????????????? ?????? ????????? ?????? ????????? ?????????.
                var postcode = document.getElementsByClassName('sample6_postcode');
                postcode[targetindex].value = data.zonecode;
                
                var address = document.getElementsByClassName("sample6_address");
                address[targetindex].value = addr;
                
                var showcontent =document.getElementsByClassName("text1");
                showcontent[targetindex].innerText = addr;
                // ????????? ???????????? ????????? ????????????.
               
            }
        }).open();
    }
    
    
    
    
</script>
</body>
</html>


