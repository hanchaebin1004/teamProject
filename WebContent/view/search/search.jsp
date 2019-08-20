<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
      <meta http-equiv="X-UA-Compatible" content="IE=edge" />
      <meta http-equiv="X-UA-Compatible" content="ie=edge">
      <meta name="viewport" content="width=device-width, initial-scale=1.0">
      <title>창식맨</title>
      <script type="text/javascript">
      function initTmap(){
        var map = new Tmap.Map({
          div:'map_div',
          width : "500px",
          height : "579px",
        });
        map.setCenter(new Tmap.LonLat("126.986072", "37.570028").transform("EPSG:4326", "EPSG:3857"), 15);
        
      	markerLayer = new Tmap.Layer.Markers();
      	map.addLayer(markerLayer);
      	   
      	var lonlat = new Tmap.LonLat( 126.984895 , 37.566369).transform("EPSG:4326", "EPSG:3857");
      	var size = new Tmap.Size(24, 38);
      	var offset = new Tmap.Pixel(-(size.w / 2), -(size.h));
      	var icon = new Tmap.Icon('http://tmapapis.sktelecom.com/upload/tmap/marker/pin_b_m_a.png',size, offset);
      	
      	marker = new Tmap.Marker(lonlat, icon);
      	markerLayer.addMarker(marker);
      } 
      
      
      $(document).ready(function() {
      	initTmap();
      });
    </script>
</head>
<body >
      <!--   faq section start    -->
      <div class="faq-section">
         <div class="container">
               <div class="row">
                  <div class="col-lg-6">
                      <div id="map_div"></div>
                  </div>
<!--              longitude
                  latitude -위경도
                  zoom -확대정도
                  markers -마커
                  format -jpg png 포맷타입
                  width
                  height -->
                  <div class="col-xl-6">
                     <span class="title">배송현황</span>
                     <h2 class="subtitle">이천 - 서울</h2>
 <!-- 아코디언 -->
                  <div class="accordion" id="accordionExample">
                     <div class="card wow fadeInUp" data-wow-duration="1s">
                        <div class="card-header" id="headingOne">
                           <h2 class="mb-0">
                              <button class="btn btn-link collapsed btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                              출발지                         
                              </button>
                           </h2>
                        </div>
                        <div id="collapseOne" class="collapse show" aria-labelledby="headingOne" data-parent="#accordionExample">
                           <div class="card-body">
                             내일도착예정 // 9000원 // 의류 // 상
                           </div>
                        </div>
                     </div>
                     <div class="card wow fadeInUp" data-wow-duration="1s" data-wow-delay=".2s">
                        <div class="card-header" id="headingTwo">
                           <h2 class="mb-0">
                              <button class="btn btn-link collapsed btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                의정부
                              </button>
                           </h2>
                        </div>
                        <div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
                           <div class="card-body">
                                                         내일도착예정 // 9000원 // 의류 // 상  
                           </div>
                        </div>
                     </div>
                     <div class="card wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s">
                        <div class="card-header" id="headingThree">
                           <h2 class="mb-0">
                              <button class="btn btn-link collapsed btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                              관악
                              </button>
                           </h2>
                        </div>
                        <div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
                           <div class="card-body">
                                                         내일도착예정 // 9000원 // 의류 // 상
                           </div>
                        </div>
                     </div>
                     <div class="card wow fadeInUp" data-wow-duration="1s" data-wow-delay=".6s">
                        <div class="card-header" id="headingFour">
                           <h2 class="mb-0">
                              <button class="btn btn-link collapsed btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseFour" aria-expanded="false" aria-controls="collapseFour">
                              집
                              </button>
                           </h2>
                        </div>
                        <div id="collapseFour" class="collapse" aria-labelledby="headingFour" data-parent="#accordionExample">
                           <div class="card-body">
                                            내일도착예정 // 9000원 // 의류 // 상
                           </div>
                        </div>
                     </div>
                  </div>
                  </div>
               </div>
</div></div>
      <!-- Tmap api -->
      <script src="https://apis.openapi.sk.com/tmap/js?version=1&format=javascript&appKey=05d93f1f-6203-482f-89f0-ba7626c327fe"></script>

</body>
</html> 