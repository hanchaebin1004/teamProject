var startNodeName = '';
var startNodeXpoint = '';
var startNodeYpoint = '';

var viaNodeName = '';
var viaNodeXpoint = '';
var viatNodeYpoint = '';

var endNodeName = '';
var endNodeXpoint = '';
var endtNodeYpoint = '';

var lon, lat;

var distance = 42000000;

//시작 간선지를 찾는 함수
function getStartNode(addr) {
	$.ajax({
		url : "getNodeDiv2",
		method : "POST",
		data : {},
		success : function(data) {
			console.log(data);
			console.log(addr);
			getXYpoint(addr);
			console.log(lon+","+lat);
			
			var count = 0;
			var max = data.length;
			
			var distanceget = setInterval(function() {
				console.log(count);
				getDistance(1, lon, lat, data[count].n_xy.split(",")[1], data[count].n_xy.split(",")[0], data[count].n_name);
				count++;
				if (count == max) {
					console.log("nearestNode: " + startNodeName + "(" + distance + "km)");
					clearTimeout(distanceget);
					$("#startNode").val(startNodeName);
				}
			}, 500);
		}
	});
}

function getEndNode(addr) {
	$.ajax({
		url : "getNodeDiv2",
		method : "POST",
		data : {},
		success : function(data) {
			console.log(data);
		}
	});
}

//주소를 이용해 XY 좌표를 찾아주는 API이용
function getXYpoint(addr){
	$.ajax({
		method:"GET",
		url:"https://apis.openapi.sk.com/tmap/geo/fullAddrGeo?version=1&format=xml&callback=result",
		async:false,
		data:{
			"coordType" : "WGS84GEO",
			"fullAddr" : addr, 
			"appKey" : "9fbe3ae8-c33c-4b03-b618-77bab5761e9e",
		},

		success:function(response){
			prtcl = response;
			var prtclString = new XMLSerializer().serializeToString(prtcl);
		    xmlDoc = $.parseXML( prtclString ),
		    $xml = $( xmlDoc ),
		    $intRate = $xml.find("coordinateInfo");
			if($intRate[0].getElementsByTagName("lon").length>0){
				lon = $intRate[0].getElementsByTagName("lon")[0].childNodes[0].nodeValue;
		    	lat = $intRate[0].getElementsByTagName("lat")[0].childNodes[0].nodeValue;
			}else{
				lon = $intRate[0].getElementsByTagName("newLon")[0].childNodes[0].nodeValue;
				lat = $intRate[0].getElementsByTagName("newLat")[0].childNodes[0].nodeValue;
			}
		}
	});
}

function getDistance(divs, startX, startY, endX, endY, nodeName){
	$.ajax({
		method:"GET",
		url:"https://apis.openapi.sk.com/tmap/routes/distance?version=1&format=xml",
		async:false, 
		data:{
			"startX" : startX,
			"startY" : startY,
			"endX" : endX,
			"endY" : endY,
			"reqCoordType" : "WGS84GEO",
			"appKey" : "9fbe3ae8-c33c-4b03-b618-77bab5761e9e"
		},
		success:function(response){
			prtcl = response;
			var prtclString = new XMLSerializer().serializeToString(prtcl);
		    xmlDoc = $.parseXML( prtclString ),
		    $xml = $( xmlDoc ),
		    $intRate = $xml.find("distanceInfo");
			var distances = $intRate[0].getElementsByTagName("distance")[0].childNodes[0].nodeValue;
			if (distances < distance) {
				distance = distances;
				if (divs == 1) {
					startNodeName = nodeName;
					startNodeXpoint = endX;
					startNodeYpoint = endY;
				} else {
					endNodeName = nodeName;
					endNodeXpoint = endX;
					endtNodeYpoint = endY;
				}
			}
		},
		error:function(request,status,error){
			console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}