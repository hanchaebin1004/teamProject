<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/acceptCustom.css">
<script src="<%=request.getContextPath()%>/assets/js/accept.custom.js"></script>
<script src="https://apis.openapi.sk.com/tmap/js?version=1&format=javascript&appKey=9fbe3ae8-c33c-4b03-b618-77bab5761e9e"></script>

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
								<input name="zipSend" id="zipNo1" type="text">
							</div>
						</div>
						<div class="col-lg-2">
							<div class="form-element">
								<input type="button" value="주소검색" onclick="goPopup(1)" style="width: 85%; height: 50px;" />
							</div>
						</div>
						<div class="col-lg-5"></div>
						<div class="col-lg-2"></div>
						<div class="col-lg-8">
							<div class="form-element">
								<input name="address1" id="roadAddrPart1" type="text">
							</div>
						</div>
						<div class="col-lg-2"></div>
						<div class="col-lg-2"></div>
						<div class="col-lg-8">
							<div class="form-element">
								<input name="address2" id="addrDetail1" type="text">
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
						<div class="col-lg-2" >
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
								<input name="zipNo2" id="zipNo2" type="text">
							</div>
						</div>
						<div class="col-lg-2">
							<div class="form-element">
								<input type="button" value="주소검색" onclick="goPopup(2)" style="width: 85%; height: 50px;" />
							</div>
						</div>
						<div class="col-lg-5"></div>
						<div class="col-lg-2"></div>
						<div class="col-lg-8">
							<div class="form-element">
								<input name="address1" id="roadAddrPart2" type="text">
							</div>
						</div>
						<div class="col-lg-2"></div>
						<div class="col-lg-2"></div>
						<div class="col-lg-8">
							<div class="form-element">
								<input name="address2" id="addrDetail2" type="text">
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
						<div class="col-lg-6" style="height: 500px;">
							<div id="map_div"></div>
						</div>
						<div class="col-lg-6">
							<div class="row">
								<!-- 출발 간선지 -->
								<div class="col-md-3">
									<div class="form-element">
										<span>출발</span>
									</div>
								</div>
								<div class="col-md-8">
									<div class="form-element">
										<input type="text" id="startNode" value="보내는분 주소를 입력해주세요" readonly="readonly">
									</div>
								</div>
								<div class="col-md-1"></div>
								<!--  경유 간선지 선택  -->
								<div class="col-md-3">
									<div class="form-element">
										<span>경유</span>
									</div>
								</div>
								<div class="col-md-9" id="viaNodes" style="display: none;">
									<div class="form-element">
										<div class="col-md-12">
											<span id="via1"></span>
											<input type="radio" id="via1Radio" onclick="rootSearch(1)" name="n_via" value="a">
										</div>
										<div class="col-md-12">
											<span id="via2"></span>
											<input type="radio" id="via2Radio" onclick="rootSearch(2)" name="n_via" value="b">
										</div>
										<div class="col-md-12">
											<span id="via3"></span>
											<input type="radio" id="via3Radio" onclick="rootSearch(3)" name="n_via" value="c">
										</div>
									</div>
								</div>
								<div class="col-md-9" id="viaBlank" style="display: block;"></div>
								<!-- 도착 간선지 -->
								<div class="col-md-3">
									<div class="form-element">
										<span>도착</span>
									</div>
								</div>
								<div class="col-md-8">
									<div class="form-element">
										<input type="text" id="endNode" value="받는분 주소를 입력해주세요" readonly="readonly">
									</div>
								</div>
								<div class="col-md-1"></div>
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
											<input type="text" id="navTime" readonly="readonly">
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
<script>
var map = '';

$(document).ready(function() {
	backgroundMap();
});

function backgroundMap(){
	map = new Tmap.Map({
		div:'map_div',
		width : "100%",
		height : "550px",
	});
	map.setCenter(new Tmap.LonLat("126.986072", "37.570028").transform("EPSG:4326", "EPSG:3857"), 15);
} 


function initTmap(startX, startY, viaX, viaY, endX, endY, lon, lat, t){
	
	map = new Tmap.Map({
		div : 'map_div',
		width : "100%",
		height : "550px",
	});
	var routeLayer = new Tmap.Layer.Vector("route");
	map.addLayer(routeLayer);
	map.setCenter(new Tmap.LonLat(viaY, viaX).transform("EPSG:4326", "EPSG:3857"), 14);

	var markerStartLayer = new Tmap.Layer.Markers("start");
	map.addLayer(markerStartLayer);
	
	var size = new Tmap.Size(24, 38);
	var offset = new Tmap.Pixel(-(size.w / 2), -size.h);
	var icon = new Tmap.IconHtml("<img src='http://tmapapis.sktelecom.com/upload/tmap/marker/pin_r_m_s.png' />", size, offset);
	var marker_s = new Tmap.Marker(new Tmap.LonLat(startY, startX).transform("EPSG:4326", "EPSG:3857"), icon);
	markerStartLayer.addMarker(marker_s);
	
	var markerEndLayer = new Tmap.Layer.Markers("end");
	map.addLayer(markerEndLayer);
	
	var size = new Tmap.Size(24, 38);
	var offset = new Tmap.Pixel(-(size.w / 2), -size.h);
	var icon = new Tmap.IconHtml("<img src='http://tmapapis.sktelecom.com/upload/tmap/marker/pin_r_m_e.png' />", size, offset);
	var marker_e = new Tmap.Marker(new Tmap.LonLat(lon, lat).transform("EPSG:4326", "EPSG:3857"), icon);
	markerEndLayer.addMarker(marker_e);

	var prtcl;
	var headers = {};
	headers["appKey"] = "9fbe3ae8-c33c-4b03-b618-77bab5761e9e";
	$.ajax({
			type 		: "POST",
			headers		: headers,
			url 		: "https://apis.openapi.sk.com/tmap/routes/routeOptimization10?version=1&format=xml",
			async 		: false,
			contentType : "application/json",
			data 		: JSON.stringify({
				"reqCoordType" : "WGS84GEO",
				"resCoordType" : "EPSG3857",
				"startName" : "출발",
				"startX" : startY,
				"startY" : startX,
				"startTime" : t,
				"endName" : "도착",
				"endX" : lon,
				"endY" : lat,
				"searchOption" : "0",
				"viaPoints" : 
					[{
						"viaPointId" : "test02",
						"viaPointName" : "test02",
						"viaX" : viaY,
						"viaY" : viaX,
						"viaTime" : 600
					},
					{
						"viaPointId" : "test02",
						"viaPointName" : "test02",
						"viaX" : endY,
						"viaY" : endX,
						"viaTime" : 600
					}]
										}),
			success 	: function(response) {
				prtcl = response;
				var innerHtml ="";
				var prtclString = new XMLSerializer().serializeToString(prtcl);
			    xmlDoc = $.parseXML( prtclString ),
			    $xml = $( xmlDoc ),
		    	$intRate = $xml.find("Document");
		    	var min = ($intRate[0].getElementsByTagName("tmap:totalTime")[0].childNodes[0].nodeValue/60).toFixed(0);
				var time = 0;
				time = min/60;
		    	var tTime = " 총 시간 : " + time + "시" + min%60 + "분,";	
				
		    	$("#navTime").val(tTime);
		    	
		    	prtcl=new Tmap.Format.KML({extractStyles:true, extractAttributes:true}).read(prtcl);
				var routeLayer = new Tmap.Layer.Vector("route");
				
				routeLayer.events.register("beforefeatureadded", routeLayer, onBeforeFeatureAdded);
		        function onBeforeFeatureAdded(e) {
			        	var style = {};
			        	switch (e.feature.attributes.styleUrl) {
			        	case "#pointStyle":
				        	style.externalGraphic = "http://topopen.tmap.co.kr/imgs/point.png"; 
				        	style.graphicHeight = 16;
				        	style.graphicOpacity = 1;
				        	style.graphicWidth = 16;
			        	break;
			        	default:
				        	style.strokeColor = "#ff0000";
				        	style.strokeOpacity = "1";
				        	style.strokeWidth = "5";
			        	};
		        	e.feature.style = style;
		        }
	
				routeLayer.addFeatures(prtcl); 
				map.addLayer(routeLayer);
				
				var markerWaypointLayer = new Tmap.Layer.Markers("waypoint");
				map.addLayer(markerWaypointLayer);
				
				var size = new Tmap.Size(24, 38);
				var offset = new Tmap.Pixel(-(size.w / 2), -size.h);
				
				var icon = new Tmap.IconHtml("<img src='http://tmapapis.sktelecom.com/upload/tmap/marker/pin_b_m_1.png' />", size, offset);
				var marker = new Tmap.Marker(new Tmap.LonLat(viaY, viaX).transform("EPSG:4326", "EPSG:3857"), icon);
				markerWaypointLayer.addMarker(marker);
				
				var icon = new Tmap.IconHtml("<img src='http://tmapapis.sktelecom.com/upload/tmap/marker/pin_b_m_2.png' />", size, offset);
				marker = new Tmap.Marker(new Tmap.LonLat(endY, endX).transform("EPSG:4326", "EPSG:3857"), icon);
				markerWaypointLayer.addMarker(marker);
				
				map.zoomToExtent(routeLayer.getDataExtent());
				
			},
			error : function(request, status, error) {
				console.log("code:" + request.status + "\n" + "message:"
						+ request.responseText + "\n" + "error:" + error);
			}
	});
}
</script>
