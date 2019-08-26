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
      <div class="breadcrumb-area services-breadcrumb-bg">
         <div class="container">
            <div class="row">
               <div class="col-lg-12">
                  <div class="breadcrumb-txt">
                     <span>배송 조회</span>
                     <h1>빠르고 안전한 배송</h1>
                  <div class="quote-form-section">
                     <span class="title">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;송장번호 조회</span>
                     <!-- searchForm start -->
                     <form action="#">
                        <div class="row">
                        <div class="col-lg-1">&nbsp;</div>
                           <div class="col-lg-8">
                              <div class="form-element"><input name="email" type="email" placeholder=""></div>
                           </div>
                           <div class="col-lg-3">
                              <div class="form-element"><input name="phone" type="submit" value="조회"></div>
                           </div>
                        </div>
                     </form>
                     <!-- searchForm end -->                     
                  </div>
                  </div>
               </div>
            </div>
         </div>
         <div class="breadcrumb-overlay"></div>
      </div>
      <!-- searched number -->
          <div style="margin-top:100px;">
            <div class="container">
              <div class="row">
                <div class="col-xl-12">
                  <span class="title">조회결과</span>
                  <h2 class="subtitle">
                    624540809162  <!-- 송장번호 EL -->
                  </h2>
                </div>
              </div>
              <table style="width:100%;text-align: center">
                <tr style="font-size:20px;background-color:#E6FFFF;border-bottom:1px gray solid;border-top:1px #58BED3 solid;">
                <th height="55px" style="border-right:1px #D5D5D5 solid;">운송장 번호</th>
                <th style="border-right:1px #D5D5D5 solid;">보내는 분</th>
                <th style="border-right:1px #D5D5D5 solid;">받는 분</th>
                <th>상품 정보</th>
                </tr>
                <tr style="font-size:15px;border-bottom:1px #D5D5D5 solid;">
                <td height="150px" style="border-right:1px #D5D5D5 solid;">624540809162</td>
                <td style="border-bottom:1px #D5D5D5 solid;border-right:1px #D5D5D5 solid;">최창식</td>
                <td style="border-right:1px #D5D5D5 solid;">최창식2</td>
                <td>최창식3</td>
                </tr>
              </table>
            </div>
          </div>
            
      <!-- searched number end-->          
      <!-- search section start    -->
      <div class="faq-section">
         <div class="container">
               <div class="row">
                  <div class="col-lg-6">
                      <div id="map_div"></div>
                  </div>
                  <div class="col-xl-6">
                     <span class="title">배송현황</span>
                     <h2 class="subtitle">이천 - 서울</h2>
          <!-- accordion start -->
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
            </div>
         </div>
         
         
         
         
         
<!-- Tmap api -->
<script src="https://apis.openapi.sk.com/tmap/js?version=1&format=javascript&appKey=05d93f1f-6203-482f-89f0-ba7626c327fe"></script>




</body>
</html> 