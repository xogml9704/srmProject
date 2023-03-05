<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
	<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css">
	<style>
	.text-primary {
	font-size: 2rem;
	}
	
	#myInfoWrapper{
  			justify-content: center;
  			align-items:center;
  			min-height: 100vh;
  		}
	</style>
  	<%@include file="/WEB-INF/views/common/head.jsp" %>
</head>

<body id="page-top">
	<div id="wrapper">
    	<!-- Sidebar -->
   		<%@include file="/WEB-INF/views/common/sidebar.jsp" %>
   			<div id="content-wrapper" class="d-flex flex-column">
   				<div id="content">
   					<!-- TopBar -->
   					<%@include file="/WEB-INF/views/common/topbar.jsp" %>
   					<!-- 메인 컨테이너 Container Fluid-->
   					<div class="container-fluid " id="container-wrapper">
   					
   						<!-- Row -->
   						<div class="row" id="myInfoWrapper">
   							<div class="col-lg-7 container">
   								<div class="d-sm-flex align-items-end justify-content-between">
   									<div class="bg-primary px-3 py-2" style="border-top-left-radius: 10px; border-top-right-radius: 10px;">
										<h6 class="mb-0 text-white">알림 센터</h6>
									</div>
									<ol class="breadcrumb">
										<li class="breadcrumb-item"><b>알림 센터</b></li>
										<li class="breadcrumb-item active" aria-current="page">나의 알림</li>
									</ol>
								</div>
								<div class="card">
									<div class="card-body d-flex p-5">
										<div class="userOgdp" style="border-right: 2px solid #757575; padding-right: 30px;">
											<div class="p-3 pt-5">
												<a class="badge badge-primary mb-3"  style="font-size:100%">나의 SR 알림</a>
												<h3 style="border-bottom:1px solid #757575;">나의 SR 요청</h3>
											</div>
										</div>
										<div class="myInfoWrapper p-5 container">
											<div class="row mb-5  justify-content-center d-flex align-items-center alert alert-primary" >나의 알림 목록</div>
											<div class="row mb-5">
												<table>
													<tbody>
														<tr style="cursor:pointer;">
															<td>
																<span class="col-3 " style="border-top:0; margin:0px;font-size:1.2rem;"><b>JHJ-SR-001</b></span>
																<span>2023.03.05</span>
																<br/>
																<span class="col-3 ">SR 요청이 정상적으로 접수가 완료되었습니다.</span>
																<hr/>
															</td>
															<td>
																<i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
															</td>
														</tr>
														<tr style="cursor:pointer;">
															<td>
																<span class="col-3 " style="border-top:0; margin:0px;font-size:1.2rem;"><b>JHJ-SR-002</b></span>
																<span>2023.03.05</span>
																<br/>
																<span class="col-3 ">SR 요청이 정상적으로 접수가 완료되었습니다.</span>
																<hr/>
															</td>
															<td>
																<i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
															</td>
														</tr>
														<tr style="cursor:pointer;">
															<td>
																<span class="col-3 " style="border-top:0; margin:0px;font-size:1.2rem;"><b>JHJ-SR-003</b></span>
																<span>2023.03.05</span>
																<br/>
																<span class="col-3 ">SR 요청이 정상적으로 접수가 완료되었습니다.</span>
																<hr/>
															</td>
															<td>
																<i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
															</td>
														</tr>
														<tr style="cursor:pointer;">
															<td>
																<span class="col-3 " style="border-top:0; margin:0px;font-size:1.2rem;"><b>JHJ-SR-004</b></span>
																<span>2023.03.05</span>
																<br/>
																<span class="col-3 ">SR 요청이 정상적으로 접수가 완료되었습니다.</span>
																<hr/>
															</td>
															<td>
																<i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
															</td>
														</tr>
														<tr style="cursor:pointer;">
															<td>
																<span class="col-3 " style="border-top:0; margin:0px;font-size:1.2rem;"><b>JHJ-SR-005</b></span>
																<span>2023.03.05</span>
																<br/>
																<span class="col-3 ">SR 요청이 정상적으로 접수가 완료되었습니다.</span>
																<hr/>
															</td>
															<td>
																<i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
															</td>
														</tr>
														<tr style="cursor:pointer;">
															<td>
																<span class="col-3 " style="border-top:0; margin:0px;font-size:1.2rem;"><b>JHJ-SR-006</b></span>
																<span>2023.03.05</span>
																<br/>
																<span class="col-3 ">SR 요청이 정상적으로 접수가 완료되었습니다.</span>
																<hr/>
															</td>
															<td>
																<i class="fas fa-ellipsis-v fa-sm fa-fw text-gray-400"></i>
															</td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>

	          			<!-- 로그아웃 모달 -->
						<%@include file="/WEB-INF/views/common/logout.jsp" %>
					</div>
	        	<!---Container Fluid-->
				</div>
			</div>
			<%@include file="/WEB-INF/views/common/footer.jsp" %>
	    <!-- Footer -->
		</div>
	</div>
	<%@include file="/WEB-INF/views/common/bottom.jsp" %>
 

</body>

</html>
