<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% pageContext.setAttribute("replaceChar", "\n"); %>
<!DOCTYPE html>
<html lang="ko">

<head>
<%@include file="/WEB-INF/views/common/head.jsp"%>
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
							<div class="bg-primary px-3 py-2" style="border-top-left-radius:10px; border-top-right-radius:10px; width:115px;">
				            	<h6 class="mb-0 text-white">SR 요청관리</h6>
				          	</div>
							<div class="card mb-4 ">
			         		<!-- 검색 -->
			                <div class="mb-1 mt-5 px-5">
			                <form class="navbar-search">
			                	<div class="row">
			                		<div class="col-4">
			                			<div class="form-group row" id="simple-date4" >
						                	<div class="input-daterange input-group input-group-sm">
						                		<label for="startDate" class="col-sm-3 col-form-label-sm">조회기간</label>
						                    	<input type="text" class="input-sm form-control form-control-sm col-sm-9" name="start" id="startDate"/>
						                    	<div class="input-group-prepend">
						                    		<span class="input-group-text" style="height:31px;">~</span>
						                    	</div>
						                    	<input type="text" class="input-sm form-control form-control-sm" name="end" />
						                    </div>
						            	</div>
			                		</div>
			                		
			                		<div class="col-3">
			                			<div class="form-group row">
			                				<label class="col-sm-3 col-form-label-sm" for="srStts">진행상태</label>
					                    	<select class="form-control form-control-sm col-sm-9" id="srStts">
					                        	<option selected>전체</option>
					                        	<option>요청</option>
					                        	<option>검토중</option>
					                        	<option>접수</option>
					                        	<option>개발중</option>
					                        	<option>개발완료</option>
					                        	<option>재검토</option>
					                    	</select>
					                	</div>
			                		</div>
			                		<div class="col-4">
			                			<div class="form-group row">
			                				<label for="srSystem" class="col-sm-3 col-form-label-sm">관련시스템</label>
					                    	<select class="form-control form-control-sm col-sm-9" id="srSystem" >
					                        	<option selected>전체</option>
					                        	<option>KHR시스템</option>
					                        	<option>KTH시스템</option>
					                        	<option>JHJ시스템 </option>
					                        	<option>HGH시스템 </option>
					                    	</select>
					                	</div>
			                		</div>
			                		<div class="col-1">
			                			
			                		</div>
			                		
			                	</div>
			                	<div class="row">
			                		<div class="col-4">
			                			<div class="form-group row">
			                				<label for="srOgdp" class="col-sm-3 col-form-label-sm">등록자 소속</label>
					                    	<select class="form-control form-control-sm col-sm-9" id="srOgdp">
					                        	<option selected>전체</option>
					                        	<option>KHR시스템</option>
					                        	<option>KTH시스템</option>
					                        	<option>JHJ시스템</option>
					                        	<option>HGH시스템</option>
					                    	</select>
					                	</div>
			                		</div>
			                		<div class="col-3">
			                			<div class="form-group row">
			                			<label for="srDept" class="col-sm-3 col-form-label-sm">개발부서</label>
					                    	<select class="form-control form-control-sm col-sm-9" id="srDept">
					                        	<option selected>전체</option>
					                        	<option>한국소프트웨어 개발1팀</option>
					                        	<option>한국소프트웨어 개발2팀</option>
					                        	<option>서강소프트웨어 개발1팀</option>
					                        	<option>미래소프트웨어 개발1팀</option>
					                    	</select>
					                	</div>
			                		</div>
			                		<div class="col-4">
					                	<div class="form-group row">
					                		<label for="srKeyWord" class="col-sm-3 col-form-label-sm">키워드</label>
					                    	<input type="text" id="srKeyWord" class="form-control form-control-sm col-sm-9 bg-light" 
					                   		aria-label="Search" placeholder="검색어를 입력하세요" style="border-color: #3f51b5;">
					                  	</div>
			                		</div>
			                		<div class="col-1">
			                			<div class="input-group-append float-right">
											<button class="btn btn-primary btn-sm" type="button" onclick="progressList()" >
												조회 <i class="fas fa-search fa-sm"></i>
											</button>
										</div>
			                		</div>
			                	</div>
			                </form>
			                </div>
			                <hr/>
			         		<!-- SR 검토 목록 -->
			                <div class="card-header py-3 d-flex flex-row align-items-center justify-content-between">
			                  <h6 class="m-0 font-weight-bold text-primary">SR 요청 목록</h6>
								<div class="d-sm-flex justify-content-end">
									<a class="btn btn-sm btn-secondary mr-1"
										href="javascript:void(0);" data-toggle="modal"
										data-target="#requestModal"> 요청등록 </a>
									<button class="btn btn-sm btn-secondary ">엑셀 다운로드</button>
								</div>
							</div>
				            <!--요청 모달 -->
				           <%@include file="/WEB-INF/views/request/requestModal.jsp" %>
			                
			                <div class="table-responsive p-3">
			                  <table class="table align-items-center table-flush table-hover border" id="dataTableHover">
			                    <thead class="thead-light">
			                      <tr>
			                        <th class="pr-0">
				                        <div class="custom-control custom-checkbox">
				                   			<input type="checkbox" class="custom-control-input" id="customCheck1">
				                   			<label class="custom-control-label" for="customCheck1"></label>
				                 		</div>
			                        </th>
			                        <th>요청번호 </th>
			                        <th>제목 </th>
			                        <th>관련시스템 </th>
			                        <th>등록자 </th>
			                        <th>소속 </th>
			                        <th>개발부서 </th>
			                        <th>상태 </th>
			                        <th>등록일 </th>
			                        <th>완료예정일 </th>
			                        <th>중요도 </th>
			                      </tr>
			                    </thead>
			                    
			                    <tbody>
			                    <tr>
			                    	<td class="pr-0">
				                        <div class="custom-control custom-checkbox">
				                   			<input type="checkbox" class="custom-control-input" id="customCheck5">
				                   			<label class="custom-control-label" for="customCheck5"></label>
				                 		</div>
			                        </td>
			                        <td>JHJ-SR-0001</td>
			                        <td class="requsetTtl"><a href="detail/1">댓글 기능 추가 부탁드립니다.~~~~~~~~~~~~~~~~~~`</a></td>
			                        <td>JHJ쇼핑몰</td>
			                        <td>정홍주 </td>
			                        <td>관리팀 </td>
			                        <td>미배정 </td>
			                        <td><span  class="badge badge-danger" style="font-size:100%">미검토</span></td>
			                        <td>2023/02/09 </td>
			                        <td>2023/04/08 </td>
			                        <td><span  class="badge badge-danger" style="font-size:100%">상</span></td>
			                      </tr>
			                      <tr>
			                      	<td class="pr-0">
				                        <div class="custom-control custom-checkbox">
				                   			<input type="checkbox" class="custom-control-input" id="customCheck2">
				                   			<label class="custom-control-label" for="customCheck2"></label>
				                 		</div>
			                        </td>
			                        <td>JHJ-SR-0002</td>
			                        <td>게시 기능 추가 부탁드립니다.</td>
			                        <td>JHJ쇼핑몰</td>
			                        <td>문지연</td>
			                        <td>관리팀 </td>
			                        <td>미배정 </td>
			                        <td><span  class="badge badge-danger" style="font-size:100%">미검토</span></td>
			                        <td>2023/02/09 </td>
			                        <td>2023/04/08 </td>
			                        <td><span  class="badge badge-secondary" style="font-size:100%">하</span></td>
			                      </tr>
			                      <tr>
			                      	<td class="pr-0">
				                        <div class="custom-control custom-checkbox">
				                   			<input type="checkbox" class="custom-control-input" id="customCheck3">
				                   			<label class="custom-control-label" for="customCheck3"></label>
				                 		</div>
			                        </td>
			                        <td>JHJ-SR-0003</td>
			                        <td>알림 기능 추가 부탁드립니다.</td>
			                        <td>JHJ쇼핑몰</td>
			                        <td>김주하 </td>
			                        <td>관리팀 </td>
			                        <td>미배정 </td>
			                        <td><span  class="badge badge-danger" style="font-size:100%">미검토</span></td>
			                        <td>2023/02/01 </td>
			                        <td>2023/04/11 </td>
			                        <td><span  class="badge badge-secondary" style="font-size:100%">하</span></td>
			                      </tr>
			                      <tr>
			                      	<td class="pr-0">
				                        <div class="custom-control custom-checkbox">
				                   			<input type="checkbox" class="custom-control-input" id="customCheck4">
				                   			<label class="custom-control-label" for="customCheck4"></label>
				                 		</div>
			                        </td>
			                        <td>JHJ-SR-0004</td>
			                        <td>댓글/검색 기능 보완 부탁드립니다.</td>
			                        <td>JHJ쇼핑몰</td>
			                        <td>정지혜 </td>
			                        <td>관리팀 </td>
			                        <td>미배정 </td>
			                        <td><span class="badge badge-primary" style="font-size:100%" >개발중</span></td>
			                        <td>2023/02/09 </td>
			                        <td>2023/04/08 </td>
			                        <td><span  class="badge badge-primary" style="font-size:100%">중</span></td>
			                      </tr>
			                    </tbody>
			                  </table>
								<div class="pager d-flex justify-content-center my-4">
									<div class="pagingButtonSet d-flex justify-content-center">
										<c:if test="${pager.pageNo > 1}">
											<a onclick="requestList(1)" type="button" class="btn btn-outline-primary btn-sm m-1">처음</a>
										</c:if>
										<c:if test="${pager.groupNo > 1}">
											<a onclick="requestList(${pager.startPageNo-1})" type="button" class="btn btn-outline-info btn-sm m-1">이전</a>
										</c:if>
						
										<c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
											<c:if test="${pager.pageNo != i}">
												<a onclick="requestList(${i})" type="button" class="btn btn-outline-success btn-sm m-1">${i}</a>
											</c:if>
											<c:if test="${pager.pageNo == i}">
												<a onclick="requestList(${i})" type="button" class="btn btn-primary btn-sm m-1 text-white">${i}</a>
											</c:if>
										</c:forEach>
						
										<c:if test="${pager.groupNo < pager.totalGroupNo }">
											<a onclick="requestList(${pager.endPageNo+1})" type="button" class="btn btn-outline-info btn-sm m-1">다음</a>
						
										</c:if>
										<c:if test="${pager.pageNo < pager.totalPageNo }">
											<a onclick="requestList(${pager.totalPageNo})" type="button" class="btn btn-outline-primary btn-sm m-1">맨끝</a>
										</c:if>
									</div>
								</div>
			                </div>
			              </div>
						</div>
						<div class="col-lg-5">
							<div class="d-sm-flex align-items-end justify-content-between">
								<div class="bg-primary px-3 py-2"
									style="border-top-left-radius: 10px; border-top-right-radius: 10px;">
									<h6 class="mb-0 text-white">SR 요청관리</h6>
								</div>
								<ol class="breadcrumb">
									<li class="breadcrumb-item"><b>SR 관리</b></li>
									<li class="breadcrumb-item active" aria-current="page">SR
										요청관리</li>
								</ol>
							</div>
							<div class="card mb-4">
							<div class="ml-5">
								<div class="mb-1 mt-5 px-5" style="max-width:850px">
                      			<div class="my-2" id="sr_no">
	                      			<span class="text-primary font-weight-bold">SR N0.</span> 
	                      			<span>JHJ-SR-0001 ${sr.srNo}</span>
                      			</div>
                      			<hr>
                      			
                              		<div class="row mb-2 mr-0" >
										<div class="col-sm-2">
											<span class="font-weight-bold">등록자: </span> 
										</div>
										<div class="col-sm-4">
											<span>정홍주</span> 
										</div>
										<div class="col-sm-2">
											<span class="font-weight-bold">소속: </span> 
										</div>
										<div class="col-sm-4">
											<span>관리팀</span> 
										</div>
									</div>
									
									<div class="row mb-2 mr-0">
										<div class="col-sm-2">
											<span class=" font-weight-bold">등록일: </span> 
										</div>
										<div class="col-sm-4">
											<span>2023/02/09</span> 
										</div>
										<div class="col-sm-2">
											<span class=" font-weight-bold">관련시스템: </span> 
										</div>
										<div class="col-sm-4">
											<span>JHJ쇼핑몰</span> 
										</div>
									</div>
									<hr>
									<div class="row mb-4">
										<div class="col-sm-2">
											<span class=" font-weight-bold">SR 제목: </span> 
										</div>
										<div class="col-sm-10 border-bottom border-light">
											<span>댓글기능 추가 부탁드립니다.</span> 
										</div>
									</div>
									<div class="row mb-4">
										<div class="col-sm-2">
											<span class="font-weight-bold">관련 근거(목적): </span> 
										</div>
										<div class="col-sm-10 border-bottom border-light">
											<span>전자정부프레임워크 지침 참조</span> 
										</div>
									</div>
									<div class="row mb-4">
										<div class="col-sm-2">
											<span class=" font-weight-bold">SR 내용: </span> 
										</div>
										<div class="col-sm-10 border border-light p-2">
											<span class="sr_content" > ${fn: replace(sr.content, replaceChar, "") } 
											1. 목적
											<br>
											<br>
											2. 개선내용
											<br>
											<br>
											3. 고려사항  
											<br>
											</span> 
										</div>
									</div>
									<!-- 첨부파일 -->
									<div class="row mb-2">
										<div class="col-sm-2">
											<span class="font-weight-bold">첨부파일: </span> 
										</div>
										<div class="col-sm-10">
											<div class="custom-file">
											<c:if test="${!empty sr.srFileName}">
												<c:set var="len" value="${fn:length(sr.srFileName)}"/>
												<c:set var="filetype" value="${fn:toUpperCase(fn:substring(sr.srFileName, len-4, len))}"/>
												<c:if test="${(filetype eq '.JPG') or (filetype eq 'JPEG') or (filetype eq '.PNG') or (filetype eq '.GIF')}"><img src='<c:url value="/request/file/${sr.srFileId}"/>' class="img-thumbnail"><br></c:if>
												<a href='<c:url value="/request/file/${sr.srFileId}"/>'>${sr.srFileName} (<fmt:formatNumber>${sr.srFileSize}</fmt:formatNumber>byte)</a>	
											</c:if>
											<c:if test="${empty sr.srFileName}">
												<span>첨부된 파일이 없습니다.</span>
											</c:if>
											</div>
										</div>
									</div>
									<!-- 하단 버튼들 -->
									<div id="buttons" class="m-3 text-right">
									<a href='<c:url value="/request/list"/>'><button type="button" class="btn btn-primary">글목록</button></a>
									<c:if test="${sessionScope.userType!='ADMIN' && sr.userId==sessionScope.userId}">
										<a href='<c:url value="/request/update/${srno}"/>'><button type="button" class="btn btn-primary">수정</button></a>
										<!-- Button trigger modal -->
										<button type="button" class="btn btn-warning" data-toggle="modal" data-target="#deleteFun">삭제</button>
									</c:if>
									<c:if test="${sessionScope.userType='ADMIN'}">
										<a href='<c:url value="/request/update/${srno}"/>'><button type="button" class="btn btn-primary">수정</button></a>
										<!-- Button trigger modal -->
										<button type="button" class="btn btn-warning" data-toggle="modal" data-target="#deleteFun">삭제</button>
									</c:if>
									
									<!-- Modal -->
									<div class="modal fade" id="deleteFun" tabindex="-1" aria-labelledby="deleteFunLabel" aria-hidden="true">
									  <div class="modal-dialog">
									    <div class="modal-content">
									      <div class="modal-header">
									        <h5 class="modal-title" id="deleteFunLabel">요청 삭제</h5>
									        <button type="button" class="close" data-dismiss="modal" aria-label="Close">
									          <span aria-hidden="true">&times;</span>
									        </button>
									      </div>
									      <div class="modal-body text-left">
									       정말 삭제하시겠습니까? 
									      </div>
									      <div class="modal-footer">
									        <button type="button" class="btn btn-secondary" data-dismiss="modal">닫기</button>
									        <a type="button" class="btn btn-warning" href= '<c:url value="/request/delete/${srno}"/>'>삭제</a>
									      </div>
									    </div>
									  </div>
									</div>
									
								</div>
                               	</div> 
							</div>
							</div>
						</div>
					</div>
				</div>
				<!-- Row -->
			<!-- 로그아웃 모달 -->
			<%@include file="/WEB-INF/views/common/logout.jsp"%>
			</div>


		<!-- Footer -->
		<%@include file="/WEB-INF/views/common/footer.jsp"%>
			<!---Container Fluid-->
		</div>


	</div>
	<%@include file="/WEB-INF/views/common/bottom.jsp"%>
</body>

</html>