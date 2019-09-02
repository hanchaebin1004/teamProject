<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<link rel="stylesheet"
	href="<%=request.getContextPath()%>/assets/css/custom/satisfactionCustom.css">

<script type="text/javascript">
$(document).ready(function(e){
	
	var idx = false;
	
	//작성보내기 전에 확인
	$('#writeSurvey').click(function(){
		if($.trim($('#p_num').val()) == ''||$.trim($('#p_num').val())==' '){
			alert("운송장 번호를 입력해주세요.");
			$('#p_num').focus();
			idx = false;
			return idx;
		} else if($.trim($('#title').val()) == ''||$.trim($('#title').val()) ==' '){
			alert("제목을 입력해주세요.");
			$('#password').focus();
			idx = false;
			return idx;
		} else if($.trim($('#password').val()) == ''||$.trim($('#password').val()) ==' '){
			alert("사용하실 암호를 입력해주세요.");
			$('#password').focus();
			idx = false;
			return idx;
		} 

		if(idx==false){
			alert("운송장 번호를 체크해주세요.");
			idx = false;
			return idx;
		} else{
			$('#surveyForm').submit();
		}
	});
	
	//유효성 검사
	$('#check').click(function(){
		$.ajax({
			url: "${pageContext.request.contextPath}/satisfaction/pNumCheck",
			type: "GET",
			data:{
				"p_num":$('#p_num').val()
			},
			success: function(data){
				//작성 가능
				if(data == 0 && ($.trim($('#p_num').val()) != ''||$.trim($('#p_num').val()) != ' ')){
					idx=true;
					$('#p_num').attr("readonly",true);
					var html="<span style='color: green'>작성 가능합니다.</span>";
					$('#pNumCheck').empty();
					$('#pNumCheck').append(html);
				}
				//중복
				else if(data == 1&& ($.trim($('#p_num').val()) != ''||$.trim($('#p_num').val()) != ' ')){
					var html="<span style='color: red'>이미 작성하셨습니다.</span>";
					$('#pNumCheck').empty();
					$('#pNumCheck').append(html);
				}
				//운송장 없거나 수령 안했을경우
				else{
					var html="<span style='color: red'>유효하지 않은 운송장 번호입니다.</span>";
					$('#pNumCheck').empty();
					$('#pNumCheck').append(html);
				}
			},
			error: function(){
				alert("운송장 번호를 입력해주세요.");
			}
		});
	});
	
	
	//값 가져오기
	$('#check').click(function(){
		$.ajax({
			url: "${pageContext.request.contextPath}/satisfaction/pNumCheck",
			type: "POST",
			data:{
				"p_num":$('#p_num').val()
			},
			success: function(data){
				$('input[name=e_num]').attr('value','${surveyBoardAboutList.e_num}');
				$('input[name=r_receiver]').attr('value','${surveyBoardAboutList.r_receiver}');
			},
			error: function(){
				
			}
		});
	});
	
});
</script>
<div class="breadcrumb-area satisfactionForm-bg">
	<div class="container">
		<div class="row">
			<div class="col-lg-7">
				<div class="breadcrumb-txt">
					<span>만족도</span>
					<h1>만족도 평가하기</h1>
					<nav aria-label="breadcrumb">
						<ol class="breadcrumb">
							<li class="breadcrumb-item">식스택배 이용시 만족도를 평가해주세요!</li>
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
						<span class="title">만족도</span>
						<h2 class="subtitle">평가하기</h2>
					</div>
				</div>
				<!-- 만족도 작성 폼 -->
				<form id="surveyForm" name="surveyForm" action="surveyPro">
					<div class="row">
						<div class="col-lg-5">
							<div class="form-element">
							
							<!--  운송장번호  -->
								<input type="text" name="p_num" id="p_num" placeholder="운송장 번호를 입력해주세요.">
							</div>
						</div>
						<!-- 체크 버튼 -->
						<div class="col-lg-2">
							<button type="button" class="boxed-btn" id="check">
								<span>check</span>
							</button>
						</div>
						<!-- 확인 메세지 -->
						<div class="col-lg-5">
							<span id = "pNumCheck"></span>
						</div>
					</div>
					<div class="row">
						<div class="col-lg-3">
							<div class="form-element">
							<!--  직원 이름  -->
								<input name="e_num" id="e_num" type="text" value="${surveyBoardAboutList.e_num}" placeholder="담당직원 이름"
									readonly="readonly" />
							</div>
						</div>

						<div class="col-lg-3">
							<div class="form-element">
							<!-- 평가자이름  -->
								<input name="r_receiver" type="text" id="r_receiver" value="${surveyBoardAboutList.r_receiver}" placeholder="평가자이름" />
							</div>
						</div>
					</div>
					<!-- 평가항목 질문 -->
					<div class="row">
						<div class="col-lg-6">
							<div class="form-element">
							<c:forEach items="${surveyQuestionList}" var="surveyQuestion">
								<p>
									<b>${surveyQuestion.sq_text}</b>
								</p>
								<!-- 평가선택지 -->
								<div>
								<c:forEach items="${surveyAnswerList}" var="surveyAnswer">
								<c:if test="${surveyQuestion.sq_num==surveyAnswer.sq_num}">
								
								<input name="${surveyQuestion.sq_num}satisfaction" id="${surveyQuestion.sq_num}point${surveyAnswer.sa_num}" value="${surveyAnswer.sa_num}point" id="${surveyQuestion.sq_num}point${surveyAnswer.sa_num}" type="radio"> <label for="${surveyQuestion.sq_num}point${surveyAnswer.sa_num}"></label>
								
								</c:if>
								<c:if test="${surveyQuestion.sq_num!=surveyAnswer.sq_num}">
								
								</c:if>
								
								</c:forEach>
								</div>
								<br>
								</c:forEach>
								
							</div>
						</div>
					</div>
					<!-- 게시글 제목  -->
					<div class="row">
						<div class="col-lg-6">
							<div class="form-element">
								<input name="title" type="text" id="title" placeholder="제목">
							</div>
						</div>
					</div>
					
					<!-- 기타 사항  -->
					<div class="row">
						<div class="col-lg-10">
							<div class="form-element">
								<input name="content" type="text" placeholder="이용 후기를 간단히 남겨주세요">
							</div>
						</div>
					</div>
					<!-- 비밀번호 -->
					<div class="row">
						<div class="col-lg-3">
							<div class="form-element">
								<input name="password" id="password" type="password" placeholder="비밀번호">
							</div>
						</div>
					</div>
					<!-- 안내사항 -->
					<div class="row">
						<div class="col-lg-10">
							<div class="form-element">
								<p class="desc">본 자료는 택배 서비스 개선 목적으로 수집합니다.</p>
								<p class="desc">제출 시에는 평가 게시에 동의, &nbsp;추후 게시판에 게시 될 수 있습니다.</p>
							</div>
						</div>
					</div>
					
					<!-- 할거 메모 -->
					<div class="row">
						<div class="col-lg-10">
							<div class="form-element">
								<p>할거: 기본적인 공백, null값 검사 할 예정, 직원의 경우 운송장 검사 하면 긁어올수 있도록, 평가자 이름은 긁어오도록 하되 수정 가능하게. 별은 해당 별에 해당되는 거 말고도 이전 별들도 체크되게(ex.5점이면 1,2,3,4번째 별도 체크 이미지로 뜨게끔)</p>
							</div>
						</div>
					</div>
					
					<!-- 제출 버튼 -->
					<div class="row">
						<div class="col-lg-12">
							<div class="form-element mb-0">
								<button type="submit" class="boxed-btn" id="writeSurvey">
									<span>Submit</span>
								</button>
							</div>
						</div>
					</div>
				</form>
			</div>
		</div>
	</div>
</div>
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
						<div class="single-feature wow fadeInUp" data-wow-duration="1s"
							data-wow-delay=".2s">
							<div class="icon-wrapper">
								<i class="flaticon-email"></i>
							</div>
							<div class="feature-details">
								<h4>On time delivery</h4>
								<p>We offers logistic management services and supply chain
									perspiciatis unde omnis iste natus error sit voluptat.</p>
							</div>
						</div>
						<div class="single-feature wow fadeInUp" data-wow-duration="1s"
							data-wow-delay=".4s">
							<div class="icon-wrapper">
								<i class="flaticon-worldwide"></i>
							</div>
							<div class="feature-details">
								<h4>global service</h4>
								<p>We offers logistic management services and supply chain
									perspiciatis unde omnis iste natus error sit voluptat.</p>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>