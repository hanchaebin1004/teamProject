<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<script>	
// 2. API 사용요청
var startX, startY, endX, endY ;
function getRoot(){
//출발지 좌표	
$.ajax({
	method:"GET",
	url:"https://apis.openapi.sk.com/tmap/geo/fullAddrGeo?version=1&format=xml&callback=result", 
	async:false,
	data:{
		"coordType" : "WGS84GEO",
		"fullAddr" : "이천시 이섭대천로 1427 101동 202호",
		"appKey" : "05d93f1f-6203-482f-89f0-ba7626c327fe",
	},
	
	success:function(response){
		prtcl = response;
		
		var prtclString = new XMLSerializer().serializeToString(prtcl);
		xmlDoc = $.parseXML( prtclString ),
		$xml = $( xmlDoc ),
		$intRate = $xml.find("coordinate");
			  		    
		var lon, lat;
		if($intRate[0].getElementsByTagName("lon").length>0){//구주소
			lon = $intRate[0].getElementsByTagName("lon")[0].childNodes[0].nodeValue;
		   	lat = $intRate[0].getElementsByTagName("lat")[0].childNodes[0].nodeValue;
		}else{//신주소
			lon = $intRate[0].getElementsByTagName("newLon")[0].childNodes[0].nodeValue;
			lat = $intRate[0].getElementsByTagName("newLat")[0].childNodes[0].nodeValue;
		}

		// 검색 결과
		startX = lon
		startY = lat
		console.log("startingPoint : " + startX + ", " + startY)
	}
});



//도착지 좌표
$.ajax({
	method:"GET",
	url:"https://apis.openapi.sk.com/tmap/geo/fullAddrGeo?version=1&format=xml&callback=result", 
	async:false,
	data:{
		"coordType" : "WGS84GEO",
		"fullAddr" : "서울특별시 관악구 봉천동 1673-10", 
		"appKey" : "05d93f1f-6203-482f-89f0-ba7626c327fe",
	},
	
	success:function(response){
		prtcl = response;
		
		var prtclString = new XMLSerializer().serializeToString(prtcl);
		xmlDoc = $.parseXML( prtclString ),
		$xml = $( xmlDoc ),
		$intRate = $xml.find("coordinate");
			  		    
		var lon, lat;
		if($intRate[0].getElementsByTagName("lon").length>0){//구주소
			lon = $intRate[0].getElementsByTagName("lon")[0].childNodes[0].nodeValue;
		   	lat = $intRate[0].getElementsByTagName("lat")[0].childNodes[0].nodeValue;
		}else{//신주소
			lon = $intRate[0].getElementsByTagName("newLon")[0].childNodes[0].nodeValue;
			lat = $intRate[0].getElementsByTagName("newLat")[0].childNodes[0].nodeValue;
		}

		// 검색 결과
		endX = lon
		endY = lat
		console.log("endPoint : " + endX + ", " + endY)
	}
});



var map = new Tmap.Map({
	  div:'map_div',
	  width : "500px",
	  height : "579px",
	});
	map.setCenter(new Tmap.LonLat("127.21481221072919", "37.40395887944509").transform("EPSG:4326", "EPSG:3857"), 10);//설정한 좌표를 "EPSG:3857"로 좌표변환한 좌표값으로 중심점으로 설정합니다.

	var routeLayer = new Tmap.Layer.Vector("route");// 백터 레이어 생성
	var markerLayer = new Tmap.Layer.Markers("point");//마커 레이어 생성
	var markerWaypointLayer = new Tmap.Layer.Markers("waypoint");// 마커 레이어 생성

	map.addLayer(routeLayer);//맵에 레이어 추가
	map.addLayer(markerLayer);//map에 마커 레이어 추가
	map.addLayer(markerWaypointLayer);//map에 마커 레이어 추가

	// 시작
	var size = new Tmap.Size(24, 38);//아이콘 크기 설정
	var offset = new Tmap.Pixel(-(size.w / 2), -size.h);//아이콘 중심점 설정
	var icon = new Tmap.IconHtml('<img src=http://tmapapis.sktelecom.com/upload/tmap/marker/pin_r_m_s.png />', size, offset);//마커 아이콘 설정
	var marker_s = new Tmap.Marker(new Tmap.LonLat(startX, startY).transform("EPSG:4326", "EPSG:3857"), icon);//설정한 좌표를 "EPSG:3857"로 좌표변환한 좌표값으로 설정합니다.
	markerLayer.addMarker(marker_s);//마커 레이어에 마커 추가

	// 도착
	var icon = new Tmap.IconHtml('<img src=http://tmapapis.sktelecom.com/upload/tmap/marker/pin_r_m_e.png />', size, offset);
	var marker_e = new Tmap.Marker(new Tmap.LonLat(endX, endY).transform("EPSG:4326", "EPSG:3857"), icon);//설정한 좌표를 "EPSG:3857"로 좌표변환한 좌표값으로 설정합니다.
	markerLayer.addMarker(marker_e);//마커 레이어에 마커 추가

	// 경유지 심볼 찍기
	var size = new Tmap.Size(24, 38);//아이콘 크기 설정
	var offset = new Tmap.Pixel(-(size.w / 2), -size.h);//아이콘 중심점 설정
	var icon = new Tmap.IconHtml('<img src=http://tmapapis.sktelecom.com/upload/tmap/marker/pin_b_m_p.png />', size, offset);
	var marker = new Tmap.Marker(new Tmap.LonLat("127.19427721850072", "37.53381081198371").transform("EPSG:4326", "EPSG:3857"), icon);//설정한 좌표를 "EPSG:3857"로 좌표변환한 좌표값으로 설정합니다.
	markerWaypointLayer.addMarker(marker);//마커 레이어에 마커 추가

	var headers = {}; 
	headers["appKey"]="05d93f1f-6203-482f-89f0-ba7626c327fe";//AppKey(서버키)
	headers["Content-Type"]="application/json";
	$.ajax({
			method:"POST",
			headers : headers,
			url:"https://apis.openapi.sk.com/tmap/routes/routeSequential30?version=1&format=xml",//다중 경유지안내 api 요청 url
			async:false,
			data:JSON.stringify({
				"startName" : "출발지", //출발지 명칭  
				//출발지 위경도 좌표
				"startX" : startX,
				"startY" : startY,
				"startTime" : "201708081103",//출발 시간(YYYYMMDDHHMM)
				"endName" : "목적지", //목적지 명칭
				//목적지 위경도 좌표입니다.
				"endX" : endX,
				"endY" : endY,
				//경유지 목록 입니다. 
				"viaPoints" : 
					[
						 {
							 "viaPointId" : "test01",//경유지 id
							 "viaPointName" : "nmae01",//경유지 명칭
							  //경유지의 위경도 좌표입니다.
							 "viaX" : "127.19427721850072",
							 "viaY" : "37.53381081198371" 
						 }
						],
				"reqCoordType" : "WGS84GEO", //요청 좌표 타입
				"resCoordType" : "EPSG3857",
				"searchOption": 0//경로 탐색 옵션 
			}),
			//데이터 로드가 성공적으로 완료되었을 때 발생하는 함입니다.
			success:function(response){
				prtcl = response;
				// 결과 출력
				var innerHtml ="";
				var prtclString = new XMLSerializer().serializeToString(prtcl);//xml to String	
			    xmlDoc = $.parseXML( prtclString ),
			    $xml = $( xmlDoc ),
		    	$intRate = $xml.find("Document");
		    	
		    	var tDistance = "총 거리 : "+($intRate[0].getElementsByTagName("tmap:totalDistance")[0].childNodes[0].nodeValue/1000).toFixed(1)+"km,";
		    	var tTime = " 총 시간 : "+($intRate[0].getElementsByTagName("tmap:totalTime")[0].childNodes[0].nodeValue/60).toFixed(0)+"분,";	
		    	var tFare = " 총 요금 : "+$intRate[0].getElementsByTagName("tmap:totalFare")[0].childNodes[0].nodeValue+"원,";	

		    	$("#result").text(tDistance+tTime+tFare);
				
				prtcl=new Tmap.Format.KML({extractStyles:true, extractAttributes:true}).read(prtcl);//데이터(prtcl)를 읽고, 벡터 도형(feature) 목록을 리턴합니다.
				
				routeLayer.removeAllFeatures();//레이어의 모든 도형을 지웁니다.
				
				//표준 데이터 포맷인 KML을 Read/Write 하는 클래스 입니다.
				//벡터 도형(Feature)이 추가되기 직전에 이벤트가 발생합니다.
				routeLayer.events.register("beforefeatureadded", routeLayer, onBeforeFeatureAdded);
			        function onBeforeFeatureAdded(e) {
				        	var style = {};
				        	switch (e.feature.attributes.styleUrl) {
				        	case "#pointStyle":
					        	style.externalGraphic = "http://topopen.tmap.co.kr/imgs/point.png";//렌더링 포인트에 사용될 외부 이미지 파일의 url입니다.
					        	style.graphicHeight = 16;//외부 이미지 파일의 크기 설정을 위한 픽셀 높이입니다.
					        	style.graphicOpacity = 1;//외부 이미지 파일의 투명도 (0-1)입니다.
					        	style.graphicWidth = 16;//외부 이미지 파일의 크기 설정을 위한 픽셀 폭입니다.
				        	break;
				        	default:
					        	style.strokeColor = "#ff0000";//stroke에 적용될 16진수 color
					        	style.strokeOpacity = "1";//stroke의 투명도(0~1)
					        	style.strokeWidth = "5";//stroke의 넓이(pixel 단위)
				        	};
			        	e.feature.style = style;
			        }
				
				routeLayer.addFeatures(prtcl);//레이어에 도형을 등록합니다.
				
				map.zoomToExtent(routeLayer.getDataExtent());//map의 zoom을 routeLayer의 영역에 맞게 변경
			},
			//요청 실패시 콘솔창에서 에러 내용을 확인할 수 있습니다.
			error:function(request,status,error){
				console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
}

$(document).ready(function() {
	getRoot();
  });
</script>
<div id="map_div"></div>
<p id="result"/>
<!-- Tmap api -->
<script src="https://apis.openapi.sk.com/tmap/js?version=1&format=javascript&appKey=05d93f1f-6203-482f-89f0-ba7626c327fe"></script>


</body>
</html>