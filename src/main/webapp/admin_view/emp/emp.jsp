<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport"
	content="width=device-width, initial-scale=1, shrink-to-fit=no">
<title>업무</title>
<!-- plugins:css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets_admin/vendors/iconfonts/mdi/css/materialdesignicons.css">
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets_admin/vendors/css/vendor.addons.css">
<!-- endinject -->
<!-- vendor css for this page -->
<!-- End vendor css for this page -->
<!-- inject:css -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets_admin/css/shared/style.css">
<!-- endinject -->
<!-- Layout style -->
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets_admin/css/demo_1/style.css">
<!-- Layout style -->
<link rel="shortcut icon"
	href="<%=request.getContextPath()%>/assets_admin/images/favicon.ico" />
</head>
<body class="header-fixed">
	<!-- partial:../../partials/_header.html -->
	<nav class="t-header">
		<div class="t-header-brand-wrapper">
			<a href="../../index.html"> <img class="logo"
				src="<%=request.getContextPath()%>/assets_admin/images/logo.svg"
				alt=""> <img class="logo-mini"
				src="<%=request.getContextPath()%>/assets_admin/images/logo_mini.svg"
				alt="">
			</a>
		</div>
		<div class="t-header-content-wrapper">
			<div class="t-header-content">
				<button
					class="t-header-toggler t-header-mobile-toggler d-block d-lg-none">
					<i class="mdi mdi-menu"></i>
				</button>
				<form action="#" class="t-header-search-box">
					<div class="input-group">
						<input type="text" class="form-control" id="inlineFormInputGroup"
							placeholder="검색하기" autocomplete="off">
						<button class="btn btn-primary" type="submit">
							<i class="mdi mdi-arrow-right-thick"></i>
						</button>
					</div>
				</form>
				<ul class="nav ml-auto">
					<li class="nav-item dropdown"><a class="nav-link" href="#"
						id="notificationDropdown" data-toggle="dropdown"
						aria-expanded="false"> <i class="mdi mdi-bell-outline mdi-1x"></i>
					</a>
						<div class="dropdown-menu navbar-dropdown dropdown-menu-right"
							aria-labelledby="notificationDropdown">
							<div class="dropdown-header">
								<h6 class="dropdown-title">Notifications</h6>
								<p class="dropdown-title-text">You have 4 unread
									notification</p>
							</div>
							<div class="dropdown-body">
								<div class="dropdown-list">
									<div
										class="icon-wrapper rounded-circle bg-inverse-primary text-primary">
										<i class="mdi mdi-alert"></i>
									</div>
									<div class="content-wrapper">
										<small class="name">Storage Full</small> <small
											class="content-text">Server storage almost full</small>
									</div>
								</div>
								<div class="dropdown-list">
									<div
										class="icon-wrapper rounded-circle bg-inverse-success text-success">
										<i class="mdi mdi-cloud-upload"></i>
									</div>
									<div class="content-wrapper">
										<small class="name">Upload Completed</small> <small
											class="content-text">3 Files uploded successfully</small>
									</div>
								</div>
								<div class="dropdown-list">
									<div
										class="icon-wrapper rounded-circle bg-inverse-warning text-warning">
										<i class="mdi mdi-security"></i>
									</div>
									<div class="content-wrapper">
										<small class="name">Authentication Required</small> <small
											class="content-text">Please verify your password to
											continue using cloud services</small>
									</div>
								</div>
							</div>
							<div class="dropdown-footer">
								<a href="#">View All</a>
							</div>
						</div></li>
					<li class="nav-item dropdown"><a class="nav-link" href="#"
						id="messageDropdown" data-toggle="dropdown" aria-expanded="false">
							<i class="mdi mdi-message-outline mdi-1x"></i> <span
							class="notification-indicator notification-indicator-primary notification-indicator-ripple"></span>
					</a>
						<div class="dropdown-menu navbar-dropdown dropdown-menu-right"
							aria-labelledby="messageDropdown">
							<div class="dropdown-header">
								<h6 class="dropdown-title">Messages</h6>
								<p class="dropdown-title-text">You have 4 unread messages</p>
							</div>
							<div class="dropdown-body">
								<div class="dropdown-list">
									<div class="image-wrapper">
										<img class="profile-img"
											src="<%=request.getContextPath()%>/assets_admin/images/profile/male/image_1.png"
											alt="profile image">
										<div class="status-indicator rounded-indicator bg-success"></div>
									</div>
									<div class="content-wrapper">
										<small class="name">Clifford Gordon</small> <small
											class="content-text">Lorem ipsum dolor sit amet.</small>
									</div>
								</div>
								<div class="dropdown-list">
									<div class="image-wrapper">
										<img class="profile-img"
											src="<%=request.getContextPath()%>/assets_admin/images/profile/female/image_2.png"
											alt="profile image">
										<div class="status-indicator rounded-indicator bg-success"></div>
									</div>
									<div class="content-wrapper">
										<small class="name">Rachel Doyle</small> <small
											class="content-text">Lorem ipsum dolor sit amet.</small>
									</div>
								</div>
								<div class="dropdown-list">
									<div class="image-wrapper">
										<img class="profile-img"
											src="<%=request.getContextPath()%>/assets_admin/images/profile/male/image_3.png"
											alt="profile image">
										<div class="status-indicator rounded-indicator bg-warning"></div>
									</div>
									<div class="content-wrapper">
										<small class="name">Lewis Guzman</small> <small
											class="content-text">Lorem ipsum dolor sit amet.</small>
									</div>
								</div>
							</div>
							<div class="dropdown-footer">
								<a href="#">View All</a>
							</div>
						</div></li>
					<li class="nav-item dropdown"><a class="nav-link" href="#"
						id="appsDropdown" data-toggle="dropdown" aria-expanded="false">
							<i class="mdi mdi-apps mdi-1x"></i>
					</a>
						<div class="dropdown-menu navbar-dropdown dropdown-menu-right"
							aria-labelledby="appsDropdown">
							<div class="dropdown-header">
								<h6 class="dropdown-title">Apps</h6>
								<p class="dropdown-title-text mt-2">Authentication required
									for 3 apps</p>
							</div>
							<div class="dropdown-body border-top pt-0">
								<a class="dropdown-grid"> <i
									class="grid-icon mdi mdi-jira mdi-2x"></i> <span
									class="grid-tittle">Jira</span>
								</a> <a class="dropdown-grid"> <i
									class="grid-icon mdi mdi-trello mdi-2x"></i> <span
									class="grid-tittle">Trello</span>
								</a> <a class="dropdown-grid"> <i
									class="grid-icon mdi mdi-artstation mdi-2x"></i> <span
									class="grid-tittle">Artstation</span>
								</a> <a class="dropdown-grid"> <i
									class="grid-icon mdi mdi-bitbucket mdi-2x"></i> <span
									class="grid-tittle">Bitbucket</span>
								</a>
							</div>
							<div class="dropdown-footer">
								<a href="#">View All</a>
							</div>
						</div></li>
				</ul>
			</div>
		</div>
	</nav>
	<!-- partial -->
	<div class="page-body">
		<!-- partial:../../partials/_sidebar.html -->
		<div class="sidebar">
			<div class="user-profile">
				<div class="display-avatar animated-avatar">
					<img class="profile-img img-lg rounded-circle"
						src="<%=request.getContextPath()%>/assets_admin/images/profile/male/image_1.png"
						alt="profile image">
				</div>
				<div class="info-wrapper">
					<p class="user-name">Allen Clerk</p>
					<h6 class="display-income">$3,400,00</h6>
				</div>
			</div>
			<ul class="navigation-menu">
				<li class="nav-category-divider">MAIN</li>
				<li><a href="../../index.html"> <span class="link-title">Dashboard</span>
						<i class="mdi mdi-gauge link-icon"></i>
				</a></li>
				<li><a href="#sample-pages" data-toggle="collapse"
					aria-expanded="false"> <span class="link-title">Sample
							Pages</span> <i class="mdi mdi-flask link-icon"></i>
				</a>
					<ul class="collapse navigation-submenu" id="sample-pages">
						<li><a href="../../pages/sample-pages/login_1.html"
							target="_blank">Login</a></li>
						<li><a href="../../pages/sample-pages/error_2.html"
							target="_blank">Error</a></li>
					</ul></li>
				<li><a href="#ui-elements" data-toggle="collapse"
					aria-expanded="false"> <span class="link-title">UI
							Elements</span> <i class="mdi mdi-bullseye link-icon"></i>
				</a>
					<ul class="collapse navigation-submenu" id="ui-elements">
						<li><a href="../../pages/ui-components/buttons.html">Buttons</a>
						</li>
						<li><a href="../../pages/ui-components/tables.html">Tables</a>
						</li>
						<li><a href="../../pages/ui-components/typography.html">Typography</a>
						</li>
					</ul></li>
				<li><a href="../../pages/forms/form-elements.html"> <span
						class="link-title">Forms</span> <i
						class="mdi mdi-clipboard-outline link-icon"></i>
				</a></li>
				<li><a href="../../pages/charts/chartjs.html"> <span
						class="link-title">Charts</span> <i
						class="mdi mdi-chart-donut link-icon"></i>
				</a></li>
				<li><a href="../../pages/icons/material-icons.html"> <span
						class="link-title">Icons</span> <i
						class="mdi mdi-flower-tulip-outline link-icon"></i>
				</a></li>
				<li class="nav-category-divider">DOCS</li>
				<li><a href="../../../docs/docs.html"> <span
						class="link-title">Documentation</span> <i
						class="mdi mdi-asterisk link-icon"></i>
				</a></li>
			</ul>
			<div class="sidebar-upgrade-banner">
				<p class="text-gray">
					Upgrade to <b class="text-primary">PRO</b> for more exciting
					features
				</p>
				<a class="btn upgrade-btn" target="_blank"
					href="http://www.uxcandy.co/product/label-pro-admin-template/">Upgrade
					to PRO</a>
			</div>
		</div>
		<!-- partial -->
		<div class="page-content-wrapper">
			<div class="page-content-wrapper-inner">
				<div class="viewport-header">
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb has-arrow">
							<li class="breadcrumb-item"><a href="#">HOME</a></li>
							<li class="breadcrumb-item"><a href="#">사원</a></li>
							<li class="breadcrumb-item active" aria-current="page">업무</li>
						</ol>
					</nav>
				</div>



				<!-- 테이블 시작 -->

				<div class="col-lg-12">
					<div class="grid">
						<p class="grid-header">업무</p>
						<div class="item-wrapper">
							<div class="table-responsive">
								<table class="table table-hover">
									<thead>
										<tr>
											<!--  //사번 이름 직위 입사일  //사원번호 사원구분(계약직,정규직,아르바이트) 직위(사원,부장,과장) 사원명   주소  연락처 입사일자 
		택배번호 송장번호 현재위치 품질 수령여부 /간선지번호 간선지명 지역
		/직원번호 근무지 관리자번호 아이디   -->
											<th>사원번호</th>
											<th>사원명</th>
											<th>직위</th>
											<th>연락처</th>
											<th>일일 작업량</th>
											<th>근무지(or지역)</th>
											<th>간선지번호</th>
											<th>간선지명</th>
											<th>택배품질</th>
											<th>처리일시</th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<!-- 한사람 -->
											<td>01</td>
											<td class="d-flex align-items-center border-top-0"><img
												class="profile-img img-sm img-rounded mr-2"
												src="<%=request.getContextPath()%>/assets_admin/images/profile/male/image_5.png"
												alt="profile image"> <span>한채빈</span></td>
											<td>과장</td>
											<td>01039082049</td>
											<td>
												<div class="progress progress-slim">
													<div class="progress-bar bg-info progress-bar-striped"
														role="progressbar" style="width: 35%" aria-valuenow="35"
														aria-valuemin="0" aria-valuemax="100"></div>
												</div>
											</td>
											<td>경기도</td>
											<!--   <td class="text-success"> 15.67% <i class="mdi mdi-arrow-up"></i>
                            </td>  퍼센트 -->
											<td>간선지번호</td>
											<td>시흥</td>


											<td>
												<div class="grid">
													<div class="grid-body">
														<div class="item-wrapper">
															<div class="demo-wrapper">
																<div class="btn-group mb-0" data-toggle="buttons">
																	<label class="btn btn-outline-info active"> <input
																		type="radio" name="options" id="option1_1" checked>
																		<!-- <i class="mdi mdi-walk"> -->상</i>
																	</label> <label class="btn btn-outline-info"> <input
																		type="radio" name="options" id="option1_2"> <!-- <i
																	class="mdi mdi-car"> -->중</i>
																	</label> <label class="btn btn-outline-info"> <input
																		type="radio" name="options" id="option1_3"> <!-- <i
																	class="mdi mdi-train"> -->하</i>
																	</label>
																</div>
															</div>
														</div>
													</div>
												</div>
											<td><div class="grid">
													<div class="grid-body">
														<div class="item-wrapper">
															<div class="demo-wrapper">
																<button type="button" class="btn btn-outline-warning">완료</button>
															</div>
														</div>
													</div>
												</div></td>
											<!-- <td class="actions"><i class="mdi mdi-dots-vertical"></i>
											
											</td> -->
										</tr>




										<tr>

											<!-- 한사람 -->
											<td>02</td>
											<td class="d-flex align-items-center border-top-0"><img
												class="profile-img img-sm img-rounded mr-2"
												src="<%=request.getContextPath()%>/assets_admin/images/profile/male/image_7.png"
												alt="profile image"> <span>양다연</span></td>
											<td>대리</td>
											<td>01012341234</td>
											<td>
												<div class="progress progress-slim">
													<div class="progress-bar bg-success progress-bar-striped"
														role="progressbar" style="width: 25%" aria-valuenow="25"
														aria-valuemin="0" aria-valuemax="100"></div>
												</div>
											</td>
											<td>서울</td>
											<!--   <td class="text-success"> 15.67% <i class="mdi mdi-arrow-up"></i>
                            </td>  퍼센트 -->
											<td>간선지번호</td>
											<td>은평구</td>


											<td>
												<div class="grid">
													<div class="grid-body">
														<div class="item-wrapper">
															<div class="demo-wrapper">
																<div class="btn-group mb-0" data-toggle="buttons">
																	<label class="btn btn-outline-info active"> <input
																		type="radio" name="options" id="option1_1" checked>
																		<!-- <i class="mdi mdi-walk"> -->상</i>
																	</label> <label class="btn btn-outline-info"> <input
																		type="radio" name="options" id="option1_2"> <!-- <i
																	class="mdi mdi-car"> -->중</i>
																	</label> <label class="btn btn-outline-info"> <input
																		type="radio" name="options" id="option1_3"> <!-- <i
																	class="mdi mdi-train"> -->하</i>
																	</label>
																</div>
															</div>
														</div>
													</div>
												</div>
											<td>
												<div class="grid">
													<div class="grid-body">
														<div class="item-wrapper">
															<div class="demo-wrapper">
																<button type="button" class="btn btn-outline-warning">완료</button>
															</div>
														</div>
													</div>
												</div>
											</td>
											</td>
											<!-- <td class="actions"><i class="mdi mdi-dots-vertical"></i>
											</td> -->
										</tr>

										<tr>
											<!-- 한사람 -->
											<td>03</td>
											<td class="d-flex align-items-center border-top-0"><img
												class="profile-img img-sm img-rounded mr-2"
												src="<%=request.getContextPath()%>/assets_admin/images/profile/female/image_10.png"
												alt="profile image"> <span>박성범</span></td>
											<td>본부장</td>
											<td>01045674567</td>
											<td>
												<div class="progress progress-slim">
													<div class="progress-bar bg-primary progress-bar-striped"
														role="progressbar" style="width: 55%" aria-valuenow="55"
														aria-valuemin="0" aria-valuemax="100"></div>
												</div>
											</td>
											<td>경기도</td>
											<!--   <td class="text-success"> 15.67% <i class="mdi mdi-arrow-up"></i>
                            </td>  퍼센트 -->
											<td>간선지번호</td>
											<td>안산</td>



											<td>
												<div class="grid">
													<div class="grid-body">
														<div class="item-wrapper">
															<div class="demo-wrapper">
																<div class="btn-group mb-0" data-toggle="buttons">
																	<label class="btn btn-outline-info active"> <input
																		type="radio" name="options" id="option1_1" checked>
																		<!-- <i class="mdi mdi-walk"> -->상</i>
																	</label> <label class="btn btn-outline-info"> <input
																		type="radio" name="options" id="option1_2"> <!-- <i
																	class="mdi mdi-car"> -->중</i>
																	</label> <label class="btn btn-outline-info"> <input
																		type="radio" name="options" id="option1_3"> <!-- <i
																	class="mdi mdi-train"> -->하</i>
																	</label>
																</div>
															</div>
														</div>
													</div>
												</div>
											<td>
												<div class="grid">
													<div class="grid-body">
														<div class="item-wrapper">
															<div class="demo-wrapper">
																<button type="button" class="btn btn-outline-warning">완료</button>
															</div>
														</div>
													</div>
												</div>
											</td>

											</td>
											<!-- <td class="actions"><i class="mdi mdi-dots-vertical"></i>
											</td> -->
										</tr>

										<tr>
											<td>04</td>
											<td class="d-flex align-items-center border-top-0"><img
												class="profile-img img-sm img-rounded mr-2"
												src="<%=request.getContextPath()%>/assets_admin/images/profile/female/image_1.png"
												alt="profile image"> <span>창식쓰</span></td>
											<td>대리</td>
											<td>01045674567</td>
											<td>
												<div class="progress progress-slim">
													<div class="progress-bar bg-danger progress-bar-striped"
														role="progressbar" style="width: 45%" aria-valuenow="45"
														aria-valuemin="0" aria-valuemax="100"></div>
												</div>
											</td>
											<td>서울</td>
											<!--   <td class="text-success"> 15.67% <i class="mdi mdi-arrow-up"></i>
                            </td>  퍼센트 -->
											<td>간선지번호</td>
											<td>강동구</td>



											<td>
												<div class="grid">
													<div class="grid-body">
														<div class="item-wrapper">
															<div class="demo-wrapper">
																<div class="btn-group mb-0" data-toggle="buttons">
																	<label class="btn btn-outline-info active"> <input
																		type="radio" name="options" id="option1_1" checked>
																		<!-- <i class="mdi mdi-walk"> -->상</i>
																	</label> <label class="btn btn-outline-info"> <input
																		type="radio" name="options" id="option1_2"> <!-- <i
																	class="mdi mdi-car"> -->중</i>
																	</label> <label class="btn btn-outline-info"> <input
																		type="radio" name="options" id="option1_3"> <!-- <i
																	class="mdi mdi-train"> -->하</i>
																	</label>
																</div>
															</div>
														</div>
													</div>
												</div>
											<td>
												<div class="grid">
													<div class="grid-body">
														<div class="item-wrapper">
															<div class="demo-wrapper">
																<button type="button" class="btn btn-outline-warning">완료</button>
															</div>
														</div>
													</div>
												</div>
											</td>

											</td>
											<!-- <td class="actions"><i class="mdi mdi-dots-vertical"></i>
											</td> -->
										</tr>
										<tr>
											<td>05</td>
											<td class="d-flex align-items-center border-top-0"><img
												class="profile-img img-sm img-rounded mr-2"
												src="<%=request.getContextPath()%>/assets_admin/images/profile/male/image_3.png"
												alt="profile image"> <span>박보검</span></td>
											<td>대리</td>
											<td>01045674567</td>
											<td>
												<div class="progress progress-slim">
													<div class="progress-bar bg-warning progress-bar-striped"
														role="progressbar" style="width: 35%" aria-valuenow="35"
														aria-valuemin="0" aria-valuemax="100"></div>
												</div>
											</td>
											<td>서울</td>
											<!--   <td class="text-success"> 15.67% <i class="mdi mdi-arrow-up"></i>
                            </td>  퍼센트 -->
											<td>간선지번호</td>
											<td>강동구</td>



											<td>
												<div class="grid">
													<div class="grid-body">
														<div class="item-wrapper">
															<div class="demo-wrapper">
																<div class="btn-group mb-0" data-toggle="buttons">
																	<label class="btn btn-outline-info active"> <input
																		type="radio" name="options" id="option1_1" checked>
																		<!-- <i class="mdi mdi-walk"> -->상</i>
																	</label> <label class="btn btn-outline-info"> <input
																		type="radio" name="options" id="option1_2"> <!-- <i
																	class="mdi mdi-car"> -->중</i>
																	</label> <label class="btn btn-outline-info"> <input
																		type="radio" name="options" id="option1_3"> <!-- <i
																	class="mdi mdi-train"> -->하</i>
																	</label>
																</div>
															</div>
														</div>
													</div>
												</div>
											<td>
												<div class="grid">
													<div class="grid-body">
														<div class="item-wrapper">
															<div class="demo-wrapper">
																<button type="button" class="btn btn-outline-warning">완료</button>
															</div>
														</div>
													</div>
												</div>
											</td>
										</tr>
									</tbody>
								</table>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- content viewport ends -->

	<!-- partial -->
	</div>
	<!-- page content ends -->
	</div>
	<!--page body ends -->
	<!-- SCRIPT LOADING START FORM HERE /////////////-->
	<!-- plugins:js -->
	<script
		src="<%=request.getContextPath()%>/assets_admin/vendors/js/core.js"></script>
	<script
		src="<%=request.getContextPath()%>/assets_admin/vendors/js/vendor.addons.js"></script>
	<!-- endinject -->
	<!-- Vendor Js For This Page Ends-->
	<!-- Vendor Js For This Page Ends-->
	<!-- build:js -->
	<script src="<%=request.getContextPath()%>/assets_admin/js/template.js"></script>
	<!-- endbuild -->
</body>
</html>