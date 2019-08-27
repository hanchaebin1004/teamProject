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
	
	$.ajax({
		method:"GET",
		url:"https://apis.openapi.sk.com/tmap/geo/fullAddrGeo?version=1&format=xml&callback=result",//Geocoding api 요청 url입니다.
		async:false,
		data:{
			"coordType" : "WGS84GEO",//지구 위의 위치를 나타내는 좌표 타입입니다.
			"fullAddr" : "서울시 마포구 와우산로29가길 69", 
			"appKey" : "9fbe3ae8-c33c-4b03-b618-77bab5761e9e",//실행을 위한 키 입니다. 발급받으신 AppKey(서버키)를 입력하세요.
		},
		//데이터 로드가 성공적으로 완료되었을 때 발생하는 함수입니다.
		success:function(response){
			prtcl = response;
			
			// 3. 마커 찍기
			var prtclString = new XMLSerializer().serializeToString(prtcl);//xml to String	
		    xmlDoc = $.parseXML( prtclString ),
		    $xml = $( xmlDoc ),
		    $intRate = $xml.find("coordinateInfo");
			
		    var lon, lat;
			if($intRate[0].getElementsByTagName("lon").length>0){//구주소
				lon = $intRate[0].getElementsByTagName("lon")[0].childNodes[0].nodeValue;
		    	lat = $intRate[0].getElementsByTagName("lat")[0].childNodes[0].nodeValue;
			}else{//신주소
				lon = $intRate[0].getElementsByTagName("newLon")[0].childNodes[0].nodeValue;
				lat = $intRate[0].getElementsByTagName("newLat")[0].childNodes[0].nodeValue;
			}
		   	
		   	var markerStartLayer = new Tmap.Layer.Markers("marker");//마커 레이어 생성
			map.addLayer(markerStartLayer);//map에 마커 레이어 추가
		   	
		   	var size = new Tmap.Size(24, 38);//아이콘 크기 설정
			var offset = new Tmap.Pixel(-(size.w / 2), -size.h); 
			var icon = new Tmap.IconHtml("<img src='http://tmapapis.sktelecom.com/upload/tmap/marker/pin_b_m_a.png' />", size, offset);//마커 아이콘 설정
			var marker_s = new Tmap.Marker(new Tmap.LonLat(lon, lat).transform("EPSG:4326", "EPSG:3857"), icon);//설정한 좌표를 "EPSG:3857"로 좌표변환한 좌표값으로 설정합니다.
			markerStartLayer.addMarker(marker_s);//마커 레이어에 마커 추가
			
			map.setCenter(new Tmap.LonLat(lon, lat).transform("EPSG:4326", "EPSG:3857"), 15);//설정한 좌표를 "EPSG:3857"로 좌표변환한 좌표값으로 즁심점을 설정합니다.
			
			$("#resultX").val("X 좌표 : "+lon+"m");
			$("#resultY").val("Y 좌표 : "+lat+"m");
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
								<span>X좌표</span>
							</div>
						</div>
						<div class="col-md-8">
							<div class="form-element">
								<input type="text" id="resultX" readonly="readonly" >
							</div>
						</div>
						<div class="col-md-4" style="float: right">
							<div class="form-element">
								<span>Y좌표</span>
							</div>
						</div>
						<div class="col-md-8">
							<div class="form-element">
								<input type="text" id="resultY" readonly="readonly" >
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>