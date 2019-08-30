<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../../common/head_admin.jsp" />
<jsp:include page="../../common/nav_admin.jsp" />
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets_admin/css/customAdmin/adminStyleEdit.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet"
	href="//code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<!-- body 시작 -->
<!-- partial -->
<div class="page-content-wrapper">
	<div class="page-content-wrapper-inner">
		<div class="viewport-header">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb has-arrow">
					<li class="breadcrumb-item"><a href="#">관리</a></li>
					<li class="breadcrumb-item active" aria-current="page">공지사항 관리</li>
				</ol>
			</nav>
		</div>
		<div class="content-viewport">
			<div class="row">
				<!-- 공지사항 관리 -->
				<div class="col-lg-12">
					<div class="grid">
						<p class="grid-header">공지사항 추가 / 수정</p>
						<div class="grid-body">
							<div class="item-wrapper">
								<div class="row mb-3">
									<div class="col-md-8 mx-auto">
										<br>
										<form>
											<div class="form-group row showcase_row_area">
												<div class="col-md-3 showcase_text_area">
													<label for="inputType1">제목</label>
												</div>
												<div class="col-md-9 showcase_content_area">
													<input type="text" class="form-control" id="inputType1"
														placeholder="제목을 입력해주세요" value="[공지사항]">
												</div>
											</div>
											<div class="form-group row showcase_row_area">
												<div class="col-md-3 showcase_text_area">
													<label for="inputType2">내용</label>
												</div>
												<div class="col-md-9 showcase_content_area">
													<textarea class="form-control" id="inputType2" cols="12"
														rows="5" placeholder="공지사항 내용을 입력해주세요"></textarea>
												</div>
											</div>
											
											<div class="row">
												<div class="form-group showcase_row_area"
													style="margin-left: 520px;">
													<button type="submit"
														class="btn btn-warning btn-sm has-icon">
														<i class="mdi mdi-check"></i>작성
													</button>
												</div>
												<div class="form-group showcase_row_area"
													style="margin-left: 10px;">
													<button type="reset"
														class="btn btn-warning btn-sm has-icon">
														<i class="mdi mdi-refresh"></i>다시 작성
													</button>
												</div>
											</div>
										</form>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
				<div class="col-lg-12">
					<div class="grid">
						<p class="grid-header">조회</p>
						<div class="item-wrapper">
							<!-- 서치버튼 추가 -->
							<div>
								<form action="#">
									<div class="form-group row showcase_row_area">
										<div class="col-md-4 showcase_content_area"
											style="margin-left: 690px;">
											<input type="text" class="form-control" id="inputType10"
												placeholder="Search">

										</div>
										<button type="reset"
											class="btn action-btn btn-sm btn-like btn-outline-danger btn-rounded">
											<i class="mdi mdi-arrow-right-bold"></i>
										</button>
									</div>
								</form>
							</div>
							<div class="table-responsive">
								<table class="table info-table">

									<thead>
										<tr>
											<th>제목</th>
											<th>내용</th>
											
											<th></th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>[공지사항]아 CSS 너무 빡치게 되어있다</td>
											<td>테스트 테스트 테스트테스트으으으으으으!!!</td>
											
											<td class="actions"><i class="mdi mdi-dots-vertical"></i>
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
</div>
<!-- content viewport ends -->
<!-- content viewport ends -->
<jsp:include page="../../common/footer_admin.jsp" />