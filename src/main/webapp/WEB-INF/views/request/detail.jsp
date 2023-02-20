<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% pageContext.setAttribute("replaceChar", "\n"); %>
<!DOCTYPE html>
<html lang="ko">

<head>
<%@include file="/WEB-INF/views/common/head.jsp"%>
<style>
	.requsetTtl{
	width: 190px;
	overflow: hidden;
	text-overflow: ellipsis;
	display:block;
	}	
</style>
</head>

<body id="page-top">

	<div id="wrapper">
	
		<!-- Sidebar -->
		<%@include file="/WEB-INF/views/common/sidebar.jsp"%>


		<div id="content-wrapper" class="d-flex flex-column">
			
			<div id="content">

				<!-- TopBar -->
				<%@include file="/WEB-INF/views/common/topbar.jsp"%>


				<!-- 메인 컨테이너 Container Fluid-->
				<div class="container-fluid" id="container-wrapper">

					<!-- Row -->
					<div class="row justify-content-md-center">
						<div class="col-lg-7">
							<!-- 리스트 요약본 출력 -->
							<%@include file="/WEB-INF/views/request/summaryList.jsp" %>
						</div>
						
						<div class="col-lg-5" id="detailView">
							<%@include file="/WEB-INF/views/request/detailView.jsp" %>
						</div>
					</div>
				</div>
				<!-- Row -->
				
				<!-- 로그아웃 모달 -->
				<%@include file="/WEB-INF/views/common/logout.jsp"%>
				
			</div>


			<!-- Footer -->
			<%@include file="/WEB-INF/views/common/footer.jsp"%>
		</div>
		
	</div>
	
	<%@include file="/WEB-INF/views/common/bottom.jsp"%>
	<script>
	
/* 	function writeSR() {
		$.ajax({
			url : "/webapp/request/write",
			type : "GET",
			datatype : "html",
			success : function(data) {
				$("#detailView").html(data);
				console.log(data);
			}
		});
	}; */
	
	</script>
	
</body>

</html>
