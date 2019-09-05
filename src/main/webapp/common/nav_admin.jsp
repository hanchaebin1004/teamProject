<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!-- partial -->
<div class="page-body">
	<!-- partial:partials/_sidebar.html -->
	<div class="sidebar">
		<div class="user-profile">
			<div class="display-avatar animated-avatar">
				<img class="profile-img img-lg rounded-circle" src="<%=request.getContextPath()%>/assets_admin/images/profile/male/image_1.png" alt="profile image">
			</div>
			<div class="info-wrapper">
				<p class="user-name">사원이름</p>
				<%-- <c:if test="${!empty member }"> ${emp.e_name}</c:if> --%>
				<h6 class="display-income">직급</h6>
			</div>
		</div>
		<ul class="navigation-menu">
			<li class="nav-category-divider">메뉴</li>
			<li>
				<a href="index.html">
					<span class="link-title">HOME</span>
					<i class="mdi mdi-gauge link-icon"></i>
				</a>
			</li>
			<li>
				<a href="#sample-pages" data-toggle="collapse" aria-expanded="false">
					<span class="link-title">관리</span>
					<i class="mdi mdi-flask link-icon"></i>
				</a>
				<ul class="collapse navigation-submenu" id="sample-pages">
					<li>
						<a href="pages/sample-pages/login_1.html" target="_blank">팝업 관리</a>
					</li>
					<li>
						<a href="pages/sample-pages/error_2.html" target="_blank">공지사항 관리</a>
					</li>
					<li>
						<a href="pages/sample-pages/error_2.html" target="_blank">메뉴 관리</a>
					</li>
				</ul>
			</li>
			<li>
				<a href="#ui-elements" data-toggle="collapse" aria-expanded="false">
					<span class="link-title">사원</span>
					<i class="mdi mdi-bullseye link-icon"></i>
				</a>
				<ul class="collapse navigation-submenu" id="ui-elements">
					<li>
						<a href="pages/ui-components/buttons.html">평가 조회</a>
					</li>
					<li>
						<a href="pages/ui-components/tables.html">진행도</a>
					</li>
				</ul>
			</li>
		</ul>
	
	</div>