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
		height : "400px",
	});
	map.setCenter(new Tmap.LonLat("126.986072", "37.570028").transform("EPSG:4326", "EPSG:3857"), 15);//설정한 좌표를 "EPSG:3857"로 좌표변환한 좌표값으로 즁심점을 설정합니다.	
	
	// 2. 시작, 도착 심볼찍기
	// 시작
	var markerLayer = new Tmap.Layer.Markers("start");//마커 레이어 생성
	map.addLayer(markerLayer);//map에 마커 레이어 추가
	
	var size = new Tmap.Size(24, 38);//아이콘 크기 설정
	var offset = new Tmap.Pixel(-(size.w / 2), -size.h);//아이콘 중심점 설정
	var icon = new Tmap.IconHtml('<img src=http://tmapapis.sktelecom.com/upload/tmap/marker/pin_r_m_s.png />', size, offset);//마커 아이콘 설정
	var marker_s = new Tmap.Marker(new Tmap.LonLat("126.97837", "37.57678").transform("EPSG:4326", "EPSG:3857"), icon);//설정한 좌표를 "EPSG:3857"로 좌표변환한 좌표값으로 설정합니다.
	markerLayer.addMarker(marker_s);//마커 레이어에 마커 추가
	
	// 도착
	var icon = new Tmap.IconHtml('<img src=http://tmapapis.sktelecom.com/upload/tmap/marker/pin_r_m_e.png />', size, offset);//마커 아이콘 설정
	var marker_e = new Tmap.Marker(new Tmap.LonLat("127.12685", "37.44036").transform("EPSG:4326", "EPSG:3857"), icon);//설정한 좌표를 "EPSG:3857"로 좌표변환한 좌표값으로 설정합니다.
	markerLayer.addMarker(marker_e);//마커 레이어에 마커 추가
	
	map.zoomToExtent(markerLayer.getDataExtent());//map의 zoom을 markerLayer의 영역에 맞게 변경합니다.
	
	// 3. 직선거리 계산  API 사용요청
	$.ajax({
		method:"GET",
		url:"https://apis.openapi.sk.com/tmap/routes/distance?version=1&format=xml",//직선거리 계산 api 요청 url입니다.
		async:false, 
		data:{
			//시작 지점 위경도 좌표입니다.
			"startX" : "126.97837",
			"startY" : "37.57678",
			//끝 지점 위경도 좌표입니다. 
			"endX" : "127.12685",
			"endY" : "37.44036",
			//입력하는 좌표계 유형을 지정합니다.
			"reqCoordType" : "WGS84GEO",
			//실행을 위한 키 입니다. 발급받으신 AppKey(서버키)를 입력하세요.
			"appKey" : "9fbe3ae8-c33c-4b03-b618-77bab5761e9e"
		},
		//데이터 로드가 성공적으로 완료되었을 때 발생하는 함수입니다.
		success:function(response){
			prtcl = response;
			
			var prtclString = new XMLSerializer().serializeToString(prtcl);//xml to String	
		    xmlDoc = $.parseXML( prtclString ),
		    $xml = $( xmlDoc ),
		    $intRate = $xml.find("distanceInfo");
			var distance = $intRate[0].getElementsByTagName("distance")[0].childNodes[0].nodeValue;
			
			$("#result").val("두점의 직선거리 : "+distance+"m");
		},
		//요청 실패시 콘솔창에서 에러 내용을 확인할 수 있습니다.
		error:function(request,status,error){
			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
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
					<div class="col-lg-12" id="rootSearchResult">
						<div class="col-md-4" style="float: right">
							<div class="form-element">
								<span>두점의 거리</span>
							</div>
						</div>
						<div class="col-md-8">
							<div class="form-element">
								<input type="text" id="result" readonly="readonly" >
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>