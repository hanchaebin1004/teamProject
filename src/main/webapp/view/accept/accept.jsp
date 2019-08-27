<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
 <link rel="stylesheet" href="<%=request.getContextPath() %>/assets/css/acceptCustom.css">
<!--  breadcrumb start  -->
<div class="breadcrumb-area quote-breadcrumb-bg">
	<div class="container">
		<div class="row">
			<div class="col-lg-7">
				<div class="breadcrumb-txt">
					<span>접수</span>
					<h1>택배 예약하기</h1>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item">식스택배는 고객님의 소중한 마음까지 전달합니다.</li>
						</ol>
					</nav>
				</div>
			</div>
		</div>
	</div>
	<div class="breadcrumb-overlay"></div>
</div>
<!--  breadcrumb end  -->
<!--   quote section start    -->
<div class="quote-section quote-page">
	<div class="container">
		<div class="row">
			<div class="col-xl-12 col-lg-12">
				<div class="row">
					<div class="col-lg-12">
						<span class="title">접수</span>
						<h2 class="subtitle">택배 예약하기</h2>
					</div>
				</div>
				<!-- 발신인 정보 입력 -->
				<div class="common-table-top">
					<strong>보내는 분</strong>
					<span>보내시는 고객님의 정보를 정확하게 입력해주세요.</span>
				</div>
				<form action="#">
					<div class="row">
						<!-- 이름  -->
						<div class="col-lg-2">
							<div class="form-element">
								<span>이름</span>
							</div>
						</div>
						<div class="col-lg-5">
							<div class="form-element">
								<input name="name" type="text">
							</div>
						</div>
						<div class="col-lg-5"></div>
						<!-- 비밀번호  -->
						<div class="col-lg-2">
							<div class="form-element">
								<span>비밀번호</span>
							</div>
						</div>
						<div class="col-lg-5">
							<div class="form-element">
								<input name="password" type="password">
							</div>
						</div>
						<div class="col-lg-5"></div>
						<!-- 연락처  -->
						<div class="col-lg-2">
							<div class="form-element">
								<span>연락처</span>
							</div>
						</div>
						<div class="col-lg-2">
							<div class="form-element">
								<div class="select-wrapper">
									<select name="tel1">
										<option selected disabled>선택</option>
										<option value="010">010</option>
										<option value="011">011</option>
										<option value="012">012</option>
									</select>
								</div>
							</div>
						</div>
						<span style="padding-top: 10px; font-weight: bold;">-</span>
						<div class="col-lg-2">
							<div class="form-element">
								<input name="tel2" type="text">
							</div>
						</div>
						<span style="padding-top: 10px; font-weight: bold;">-</span>
						<div class="col-lg-2">
							<div class="form-element">
								<input name="tel3" type="text">
							</div>
						</div>
						<div class="col-lg-5"></div>
						<!-- 주소  -->
						<div class="col-lg-12">
							<hr>
						</div>
						<div class="col-lg-2">
							<div class="form-element">
								<span>주소</span>
							</div>
						</div>
						<div class="col-lg-2">
							<div class="form-element">
								<input name="zip1" type="text">
							</div>
						</div>
						<div class="col-lg-2">
							<div class="form-element">
								<input name="zip2" type="text">
							</div>
						</div>
						<div class="col-lg-2">
							<div class="form-element">
								<input type="button" value="주소검색" style="width: 85%; height: 50px;" />
							</div>
						</div>
						<div class="col-lg-3"></div>
						<div class="col-lg-2"></div>
						<div class="col-lg-8">
							<div class="form-element">
								<input name="address1" type="text">
							</div>
						</div>
						<div class="col-lg-2"></div>
						<div class="col-lg-2"></div>
						<div class="col-lg-8">
							<div class="form-element">
								<input name="address2" type="text">
							</div>
						</div>
					</div>
					<br>
					<!-- 수신인 정보 입력 -->
					<div class="common-table-top">
						<strong>받는 분</strong>
						<span>받으시는 고객님의 정보를 정확하게 입력해주세요.</span>
					</div>
					<div class="row">
						<div class="col-lg-2">
							<div class="form-element">
								<span>이름</span>
							</div>
						</div>
						<div class="col-lg-5">
							<div class="form-element">
								<input name="name" type="text">
							</div>
						</div>
						<div class="col-lg-5"></div>
						<!-- 연락처  -->
						<div class="col-lg-2">
							<div class="form-element">
								<span>연락처</span>
							</div>
						</div>
						<div class="col-lg-2">
							<div class="form-element">
								<div class="select-wrapper">
									<select name="tel1">
										<option selected disabled>선택</option>
										<option value="010">010</option>
										<option value="011">011</option>
										<option value="012">012</option>
									</select>
								</div>
							</div>
						</div>
						<span style="padding-top: 10px; font-weight: bold;">-</span>
						<div class="col-lg-2">
							<div class="form-element">
								<input name="tel2" type="text">
							</div>
						</div>
						<span style="padding-top: 10px; font-weight: bold;">-</span>
						<div class="col-lg-2">
							<div class="form-element">
								<input name="tel3" type="text">
							</div>
						</div>
						<div class="col-lg-5"></div>
						<!-- 주소  -->
						<div class="col-lg-12">
							<hr>
						</div>
						<div class="col-lg-2">
							<div class="form-element">
								<span>주소</span>
							</div>
						</div>
						<div class="col-lg-2">
							<div class="form-element">
								<input name="zip1" type="text">
							</div>
						</div>
						<div class="col-lg-2">
							<div class="form-element">
								<input name="zip2" type="text">
							</div>
						</div>
						<div class="col-lg-2">
							<div class="form-element">
								<input type="button" value="주소검색" style="width: 85%; height: 50px;" />
							</div>
						</div>
						<div class="col-lg-3"></div>
						<div class="col-lg-2"></div>
						<div class="col-lg-8">
							<div class="form-element">
								<input name="address1" type="text">
							</div>
						</div>
						<div class="col-lg-2"></div>
						<div class="col-lg-2"></div>
						<div class="col-lg-8">
							<div class="form-element">
								<input name="address2" type="text">
							</div>
						</div>
					</div>
					<br>
					<!-- 상품 정보 입력 -->
					<div class="common-table-top">
						<strong>상품 정보</strong>
						<span>상품정보를 정확하게 입력해주세요.</span>
					</div>
					<div class="row">
						<!-- 상품분류  -->
						<div class="col-lg-2">
							<div class="form-element">
								<span>상품분류</span>
							</div>
						</div>
						<div class="col-lg-5">
							<div class="form-element">
								<input name="name" type="text">
							</div>
						</div>
						<div class="col-lg-5"></div>
						<!-- 부피  -->
						<div class="col-lg-2">
							<div class="form-element">
								<span>부피</span>
							</div>
						</div>
						<div class="col-lg-2">
							<div class="form-element">
								<div class="select-wrapper">
									<select name="tel1">
										<option selected disabled>선택</option>
										<option value="010">극소</option>
										<option value="011">소</option>
										<option value="012">중</option>
										<option value="012">대</option>
									</select>
								</div>
							</div>
						</div>
						<div class="col-lg-8"></div>
						<!-- 운임  -->
						<div class="col-lg-2">
							<div class="form-element">
								<span>운임</span>
							</div>
						</div>
						<div class="col-lg-3">
							<div class="form-element">
								<input name="name" type="text" readonly="readonly" placeholder="계산기를 이용해주세요">
							</div>
						</div>
						<div class="col-lg-2">
							<div class="form-element">
								<input type="button" value="운임계산기" style="width: 85%; height: 50px;" />
							</div>
						</div>
						<div class="col-lg-5"></div>
						<!-- 요청사항  -->
						<div class="col-lg-12">
							<hr>
						</div>
						<div class="col-lg-2">
							<div class="form-element">
								<span>요청사항</span>
							</div>
						</div>
						<div class="col-lg-10">
							<div class="form-element">
								<input name="name" type="text">
							</div>
						</div>
					</div>
					<br>
					<!-- 경로 선택 -->
					<div class="common-table-top">
						<strong>경로 선택</strong>
						<span>상품을 배송할 경로를 선택해주세요.</span>
					</div>
					<div class="row">
						<!--  contact form and map start  -->
						<div class="col-lg-6" style="height: 450px;">
							<div class="map-wrapper">
								<div id="map"></div>
							</div>
						</div>
						<div class="col-lg-6">
							<div class="row">
								<!-- 출발 간선지 -->
								<div class="col-md-3">
									<div class="form-element">
										<span>출발</span>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-element">
										<input type="text" placeholder="OO 간선지" readonly="readonly">
									</div>
								</div>
								<div class="col-md-3"></div>
								<!--  경유 간선지 선택  -->
								<div class="col-md-3">
									<div class="form-element">
										<span>경유</span>
									</div>
								</div>
								<div class="col-md-8">
									<div class="form-element">
										<span>A간선지</span>
										<input type="radio" name="n_via" value="a">
										<span>B간선지</span>
										<input type="radio" name="n_via" value="b">
										<span>C간선지</span>
										<input type="radio" name="n_via" value="c">
									</div>
								</div>
								<div class="col-md-1"></div>
								<!-- 도착 간선지 -->
								<div class="col-md-3">
									<div class="form-element">
										<span>도착</span>
									</div>
								</div>
								<div class="col-md-6">
									<div class="form-element">
										<input type="text" placeholder="OO 간선지" readonly="readonly">
									</div>
								</div>
								<div class="col-md-3">
									<div class="form-element">
										<input type="button" value="경로계산" onclick="rootSearch()" style="width: 85%; height: 50px;" />
									</div>
								</div>
								<!-- 경로 계산 결과 -->
								<div class="col-lg-12">
									<hr>
								</div>
								<div class="col-lg-12" id="rootSearchResult" style="display: none;">
									<div class="col-md-4" style="float: right">
										<div class="form-element">
											<span>실시간 경로</span>
										</div>
									</div>
									<div class="col-md-8">
										<div class="form-element">
											<input type="text" readonly="readonly" value="1시간 24분">
										</div>
									</div>
									<div class="col-md-4" style="float: right">
										<div class="form-element">
											<span>평균도착시간</span>
										</div>
									</div>
									<div class="col-md-8">
										<div class="form-element">
											<input type="text" readonly="readonly" value="2시간 3분">
										</div>
									</div>
									<div class="col-md-4" style="float: right">
										<div class="form-element">
											<span>예상도착시간</span>
										</div>
									</div>
									<div class="col-md-8">
										<div class="form-element">
											<input type="text" readonly="readonly" value="2시간 3분">
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
					<!--  contact form and map end  -->
					<div class="row" style="margin-top: 15px; text-align: right">
						<div class="col-lg-12">
							<div class="form-element mb-0">
								<button type="submit" class="boxed-btn">
									<span>예약</span>
								</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
<script>
	function rootSearch() {
		$('#rootSearchResult').css("display", "block");
	}
</script>
<!--   quote section end    -->
<!--  features section start  -->
<div class="features-section home-2 border">
	<div class="container">
		<div class="row feature-content">
			<div class="col-xl-5 offset-xl-7 col-lg-6 offset-lg-6 pr-0">
				<div class="features">
					<span class="title">안내</span>
					<h2 class="subtitle">택배 고객센터 안내</h2>
					<div class="feature-lists">
						<div class="single-feature wow fadeInUp" data-wow-duration="1s">
							<div class="icon-wrapper">
								<i class="flaticon-customer-service"></i>
							</div>
							<div class="feature-details">
								<h4>상담 운영시간</h4>
								<p>월~금요일 09:00~18:00 / 토요일 09:00~13:00</p>
							</div>
						</div>
						<div class="single-feature wow fadeInUp" data-wow-duration="1s" data-wow-delay=".2s">
							<div class="icon-wrapper">
								<i class="flaticon-email"></i>
							</div>
							<div class="feature-details">
								<h4>On time delivery</h4>
								<p>We offers logistic management services and supply chain perspiciatis unde omnis iste natus error sit voluptat.</p>
							</div>
						</div>
						<div class="single-feature wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s">
							<div class="icon-wrapper">
								<i class="flaticon-worldwide"></i>
							</div>
							<div class="feature-details">
								<h4>global service</h4>
								<p>We offers logistic management services and supply chain perspiciatis unde omnis iste natus error sit voluptat.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- google map api -->
<script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBqFuLx8S7A8eianoUhkYMeXpGPvsXp1NM&callback=initMap" async defer></script>
<!-- google map activate js -->
<script src="<%=request.getContextPath()%>/assets/js/google-map-activate.js"></script>
<!--  features section end  -->
