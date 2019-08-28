<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/acceptCustom.css">
<script src="https://apis.openapi.sk.com/tmap/js?version=1&format=javascript&appKey=9fbe3ae8-c33c-4b03-b618-77bab5761e9e"></script>
<script type="text/javascript">
$(document).ready(function() {
	initTmap();
});

function initTmap(){
	var map = new Tmap.Map({
		div : 'map_div',
		width : "100%",
		height : "500px",
	});
	map.setCenter(new Tmap.LonLat("126.7499746596188", "37.49980548622674")
			.transform("EPSG:4326", "EPSG:3857"), 10);
	routeLayer = new Tmap.Layer.Vector("route");
	map.addLayer(routeLayer);

	markerStartLayer = new Tmap.Layer.Markers("start");
	markerEndLayer = new Tmap.Layer.Markers("end");
	markerWaypointLayer = new Tmap.Layer.Markers("waypoint");

	pointLayer = new Tmap.Layer.Vector("point");

	// 2. 시작, 도착 심볼찍기
	// 시작
	map.addLayer(markerStartLayer);

	var size = new Tmap.Size(24, 38);
	var offset = new Tmap.Pixel(-(size.w / 2), -size.h);
	var icon = new Tmap.IconHtml(
			"<img src='http://tmapapis.sktelecom.com/upload/tmap/marker/pin_r_m_s.png' />", size, offset);
	var marker_s = new Tmap.Marker(new Tmap.LonLat("126.98605733268329", "37.568085523663385").transform("EPSG:4326", "EPSG:3857"), icon);
	markerStartLayer.addMarker(marker_s);

	// 도착
	map.addLayer(markerEndLayer);

	var size = new Tmap.Size(24, 38);
	var offset = new Tmap.Pixel(-(size.w / 2), -size.h);
	var icon = new Tmap.IconHtml(
			"<img src='http://tmapapis.sktelecom.com/upload/tmap/marker/pin_r_m_e.png' />",
			size, offset);
	var marker_e = new Tmap.Marker(new Tmap.LonLat("127.00973587385866",
			"37.56445848334345").transform("EPSG:4326", "EPSG:3857"), icon);
	markerEndLayer.addMarker(marker_e);

	// 3. 경유지 심볼 찍기
	map.addLayer(markerWaypointLayer);

	var size = new Tmap.Size(24, 38);
	var offset = new Tmap.Pixel(-(size.w / 2), -size.h);

	icon = new Tmap.IconHtml("<img src='http://tmapapis.sktelecom.com/upload/tmap/marker/pin_b_m_3.png' />", size, offset);
	marker = new Tmap.Marker(new Tmap.LonLat("127.00221495976581", "37.56568310756034").transform("EPSG:4326", "EPSG:3857"), icon);
	markerWaypointLayer.addMarker(marker);

	// 4. 경유지 최적화 API 사용요청
	var prtcl;
	var headers = {};
	headers["appKey"] = "9fbe3ae8-c33c-4b03-b618-77bab5761e9e";
		$.ajax({
				type 		: "POST",
				headers		: headers,
				url 		: "https://apis.openapi.sk.com/tmap/routes/routeOptimization10?version=1&format=xml",//
				async 		: false,
				contentType : "application/json",
				data 		: JSON.stringify({
												"reqCoordType" : "WGS84GEO",
												"resCoordType" : "EPSG3857",
												"startName" : "출발",
												"startX" : "126.98605733268329",
												"startY" : "37.568085523663385",
												"startTime" : "201711121314",
												"endName" : "도착",
												"endX" : "127.00973587385866",
												"endY" : "37.56445848334345",
												"searchOption" : "0",
												"viaPoints" : 
													[{
														"viaPointId" : "test02",
														"viaPointName" : "test02",
														"viaX" : "127.00221495976581",
														"viaY" : "37.56568310756034",
														"viaTime" : 600
													}]
											}),
				success 	: function(response) {
					
					prtcl = response;

					// 5. 경유지 최적화 결과 Line 그리기 
					//경유지 최적화 결과 POINT 찍기
					/* -------------- Geometry.Point -------------- */
					var pointLayer = new Tmap.Layer.Vector("point");
					var prtclString = new XMLSerializer()
							.serializeToString(prtcl);//xml to String	
					xmlDoc = $.parseXML(prtclString), $xml = $(xmlDoc),
							$intRate = $xml.find("Placemark");
					var style_red = {
						fillColor : "#FF0000",
						fillOpacity : 0.2,
						strokeColor : "#FF0000",
						strokeWidth : 3,
						strokeDashstyle : "solid",
						pointRadius : 2,
						title : "this is a red line"
					};
					$intRate
							.each(function(index, element) {
								var nodeType = element
										.getElementsByTagName("tmap:nodeType")[0].childNodes[0].nodeValue;
								if (nodeType == "POINT") {
									var point = element
											.getElementsByTagName("coordinates")[0].childNodes[0].nodeValue
											.split(',');
									var geoPoint = new Tmap.Geometry.Point(
											point[0], point[1]);
									var pointFeature = new Tmap.Feature.Vector(
											geoPoint, null, style_red);
									pointLayer.addFeatures([ pointFeature ]);
								}
							});
					map.addLayer(pointLayer);
					/* -------------- Geometry.Point -------------- */
					//경유지 최적화 결과 Line 그리기
					routeLayer.style = {
						fillColor : "#FF0000",
						fillOpacity : 0.2,
						strokeColor : "#FF0000",
						strokeWidth : 3,
						strokeDashstyle : "solid",
						pointRadius : 2,
						title : "this is a red line"
					}
					var kmlForm = new Tmap.Format.KML().read(prtcl);
					routeLayer.addFeatures(kmlForm);

					// 6. 경유지 최적화 결과 반경만큼 지도 레벨 조정
					map.zoomToExtent(routeLayer.getDataExtent());

				},
				error : function(request, status, error) {
					console.log("code:" + request.status + "\n" + "message:"
							+ request.responseText + "\n" + "error:" + error);
				}
		});
}
</script>
<style>
.mPop {
	border: 1px;
	background-color: #FFF;
	font-size: 12px;
	border-color: #FF0000;
	border-style: solid;
	text-align: center;
}
/*공통사용 클래스*/
.mPopStyle {
	border: 1px;
	background-color: #FFF;
	font-size: 12px;
	border-color: #FF0000;
	border-style: solid;
	text-align: left;
}
</style>
<div class="quote-section quote-page">
	<div class="container">
		<!-- 경로 선택 -->
		<div class="common-table-top">
			<strong>경로 선택</strong>
			<span>상품을 배송할 경로를 선택해주세요.</span>
		</div>
		<div class="row">
			<!--  contact form and map start  -->
			<div class="col-lg-6" style="height: 450px;">
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
	</div>
</div>