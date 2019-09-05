<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<script src="//code.jquery.com/jquery-3.2.1.min.js"></script>

<script>
	$(document).ready(function() {
		$.ajax({
			url		:"${pageContext.request.contextPath}/topMenu",
			method	: "POST",
			data	: {},
			success	: function(data){
				var menu = '';
				$.each(data, function(i, item){
					if(item.tm_div == 9 && item.tm_depth == 2) {
						menu += '<li>'+
							'<a href="/'+item.tm_url+'">'+
							'<span class="link-title">'+item.tm_text+'</span>'+
							'<i class="mdi mdi-gauge link-icon"></i></a></li>'
					}	
				});
				$("#adminMenu").append(menu);
			}
		})
	});
</script>

<!-- partial -->
    <div class="page-body">
      <!-- partial:partials/_sidebar.html -->
      <div class="sidebar">
        <div class="user-profile">
          <div class="display-avatar animated-avatar">
            <img class="profile-img img-lg rounded-circle" src="<%= request.getContextPath() %>/assets_admin/images/profile/male/image_1.png" alt="profile image">
          </div>
          <div class="info-wrapper">
            <p class="user-name">Allen Clerk</p>
            <h6 class="display-income">$3,400,00</h6>
          </div>
        </div>
        <ul class="navigation-menu" id="adminMenu">
          
        </ul>
      </div>