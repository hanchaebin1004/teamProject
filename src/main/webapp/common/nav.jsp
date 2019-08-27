<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<body>
	<!--   header area start   -->
	<div class="header-area">
		<div class="support-nav-area">
			<div class="container">
				<div class="row">
					<div class="col-lg-3 col-6">
						<div class="logo-wrapper">
							<div class="logo-wrapper-inner">
								<a href="index.html">
									<img src="<%=request.getContextPath()%>/assets/img/logo.png" alt="">
								</a>
							</div>
						</div>
					</div>
					<div class="col-lg-9 col-6 position-lg-relative position-static">
						<div class="support-bar">
							<div class="row">
								<div class="offset-xl-4 col-xl-8 offset-2 col-10">
									<div class="row">
										<div class="col-lg-4">
											<div class="support-info">
												<div class="left-content">
													<i class="flaticon-call"></i>
												</div>
												<div class="right-content">
													<div class="right-content-inner">
														<h5>Free Call</h5>
														<p>+ 00 12 123 456</p>
													</div>
												</div>
											</div>
										</div>
										<div class="col-lg-4">
											<div class="support-info">
												<div class="left-content">
													<i class="flaticon-email"></i>
												</div>
												<div class="right-content">
													<h5>Mail us</h5>
													<p>Support@mail.com</p>
												</div>
											</div>
										</div>
										<div class="col-lg-4">
											<a href="quote.html" class="boxed-btn">
												<span>Get a Quote</span>
											</a>
										</div>
									</div>
								</div>
							</div>
						</div>
						<script>
							$(document).ready(function() {
								$.ajax({
									url		:"${pageContext.request.contextPath}/topMenu",
									method	: "POST",
									data	: {},
									success	: function(data){
										console.log(data);
										$.each(data, function(i, item){
											if(item.tm_depth == 1) {
												var menu = '';
												var hasSub = false;
												$.each(data, function(j,submenu){
													if(submenu.tm_parent == item.tm_num){
													hasSub = true;
													}
												})
												if (hasSub) {
													console.log(item.tm_text);
													menu += '<li class="dropdown">'+
															'<a href="${pageContext.request.contextPath}/'+item.tm_url+'">'+ item.tm_text +'</a>'+
																'<ul>';
													$.each(data, function(j,submenu){
														if(submenu.tm_parent == item.tm_num){
															console.log(submenu.tm_text);
															menu += 
																	'<li>'+
																		'<a href="${pageContext.request.contextPath}/'+ submenu.tm_url+'">'+
																				submenu.tm_text+
																		'</a>'+
																	'</li>';
														}
													}) 
																'</ul>';
												} else {
													menu +=	
														'<li>'+
															'<a href="${pageContext.request.contextPath}/'+item.tm_url+'">'+ item.tm_text +'</a>';
												}
												menu += '</li>';
												$("#mainMenustart").append(menu);
											}
										})
									}
								})
							});
						</script>
						<div class="navbar-area">
							<div class="row">
								<div class="col-lg-9 d-lg-block d-none">
									<nav class="main-menu" id="mainMenu">
										<ul id="mainMenustart">
											<!--DB에서  Ajax로 메뉴 가져와 붙임 -->
										</ul>
									</nav>
								</div>
								<div class="col-lg-3 col-12 position-lg-relative position-static">
									<div id="mobileMenu"></div>
									<ul class="search-cart-area">
										<li class="search-icon">
											<a href="#">
												<i class="flaticon-search"></i>
											</a>
										</li>
										<li class="shopping-icon">
											<a href="#">
												<i class="flaticon-shopping-cart-black-shape"></i>
											</a>
											<span class="count">0</span>
										</li>
									</ul>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!--   header area end   -->