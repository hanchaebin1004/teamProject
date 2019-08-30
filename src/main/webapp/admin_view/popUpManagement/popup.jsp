<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<jsp:include page="../../common/head_admin.jsp" />
<jsp:include page="../../common/nav_admin.jsp" />

<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets_admin/css/customAdmin/adminStyleEdit.css">
<script src="https://code.jquery.com/jquery-1.12.4.js"></script>
<script src="https://code.jquery.com/ui/1.12.1/jquery-ui.js"></script>
<link rel="stylesheet" href="../assets_admin/adminDatePicker/jquery-ui.css">

<!-- body 시작 -->
<!-- partial -->
<div class="page-content-wrapper">
	<div class="page-content-wrapper-inner">
		<div class="viewport-header">
			<nav aria-label="breadcrumb">
				<ol class="breadcrumb has-arrow">
					<li class="breadcrumb-item"><a href="#">관리</a></li>
					<li class="breadcrumb-item active" aria-current="page">팝업 관리</li>
				</ol>
			</nav>
		</div>
		<div class="content-viewport">
			<div class="row">
				<!-- 팝업 관리 -->
				<div class="col-lg-12">
					<div class="grid">
						<p class="grid-header">팝업 관리 추가 / 수정</p>
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
														placeholder="제목을 입력해주세요">
												</div>
											</div>
											<div class="form-group row showcase_row_area">
												<div class="col-md-3 showcase_text_area">
													<label for="inputType2">내용</label>
												</div>
												<div class="col-md-9 showcase_content_area">
													<textarea class="form-control" id="inputType2" cols="12"
														rows="5" placeholder="팝업 내용을 입력해주세요"></textarea>
												</div>
											</div>
											<div class="form-group row showcase_row_area">
												<div class="col-md-3 showcase_text_area">
													<label for="datepicker">종료 일자</label>
												</div>
												<div class="col-md-4 showcase_content_area">
													<input type="text" class="form-control" id="datepicker" placeholder="클릭후 선택해주세요.">
												</div>

												<!-- datepicker 설정 -->
												<script>
													$("#datepicker").datepicker({
																		dateFormat : 'yy-mm-dd',
																		monthNames : [
																				'1월',
																				'2월',
																				'3월',
																				'4월',
																				'5월',
																				'6월',
																				'7월',
																				'8월',
																				'9월',
																				'10월',
																				'11월',
																				'12월' ],
																		dayNamesMin : [
																				'일',
																				'월',
																				'화',
																				'수',
																				'목',
																				'금',
																				'토' ],
																		showOtherMonths : true,
																		showMonthAfterYear : true,
																		buttonImageOnly : true,
																		yearSuffix : "년",
																		minDate: "today"
																	});
													
												</script>


											</div>

											<div class="form-group row showcase_row_area">
												<div class="col-md-3 showcase_text_area">
													<label for="inputType4">공개 여부</label>
												</div>
												<div class="col-md-9 showcase_content_area">
													<div class="form-inline">
														<div class="radio mb-3">
															<label class="radio-label mr-4"> <input
																name="sample" type="radio" checked>공개<i
																class="input-frame"></i>
															</label>
														</div>
														<div class="radio mb-3">
															<label class="radio-label"> <input name="sample"
																type="radio">비공개<i class="input-frame"></i>
															</label>
														</div>
													</div>
												</div>
											</div>
											<div class="row">
												<div class="form-group showcase_row_area"
													style="margin-left: 520px;">
													<button type="submit"
														class="btn btn-warning btn-sm has-icon">
														<i class="mdi mdi-border-color"></i>작성
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
											<th>종료일자</th>
											<th>공개여부</th>
											<th></th>
										</tr>
									</thead>
									<tbody>
										<tr>
											<td>123456789</td>
											<td>123456789456123</td>
											<td>2019-12-31</td>
											<td>Y</td>
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