<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!--  hero area start  -->
<div class="hero-area hero-bg-3 home-3" id="heroHome15">
	<div class="container">
		<div class="row">
			<div class="col-xl-6 col-lg-8">
				<div class="hero-txt">
					<span class="wow fadeInDown" data-wow-duration="1.5s">단 한사람, <c:if test="${empty member }">당신</c:if><c:if test="${!empty member }">
					${member.m_name}
					</c:if>을 위하여 </span>
					<h1 class="wow fadeInUp" data-wow-duration="1.5s">나의 택배,<br>&nbsp;&nbsp;&nbsp;&nbsp;<span style="color:#fac08f">식스 택배.</span></h1>
					<span class="wow fadeInDown" data-wow-duration="1.5s">마음이 통하면, 세상은 더, 따뜻해 집니다.</span><br>
					<a class="wow fadeInUp boxed-btn" data-wow-duration="1.5s" href="accept/accept">
						<span>택배예약</span>
					</a>
				</div>
			</div>
		</div>
	</div>
	<div class="hero-overlay"></div>
</div>
<!--  hero area end  -->
<div class="cta-section home-2">
	<div class="container">
		<div class="cta-container">
			<div class="row align-items-center">
				<div class="col-lg-9">
					<div class="form-element">
						<input name="name" type="text" placeholder="택배번호를 입력해주세요">
					</div>
				</div>
				<div class="col-lg-3 text-center text-lg-right">
					<a href="#" onclick="alert('구현 중 입니다');" class="boxed-btn">
						<span>택배조회</span>
					</a>
				</div>
			</div>
		</div>
	</div>
	<div class="cta-overlay"></div>
</div>
<!--   cta section end    -->
<!--  service section start  -->
<div class="service-section home-3">
	<div class="container">
		<span class="title">Our Services</span>
		<h2 class="subtitle">WHAT WE PROVIDE</h2>
		<div class="services">
			<div class="row">
				<div class="col-lg-4 col-md-6">
					<div class="single-service wow fadeInUp" data-wow-duration="1.5s">
						<div class="icon-wrapper">
							<i class="flaticon-airplane"></i>
						</div>
						<div class="service-txt">
							<h4 class="service-title">Air freight</h4>
							<p class="service-para">We offers a host of logistic management services and supply chain solutions.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-service wow fadeInUp" data-wow-duration="1.5s" data-wow-delay=".2s">
						<div class="icon-wrapper">
							<i class="flaticon-delivery-truck"></i>
						</div>
						<div class="service-txt">
							<h4 class="service-title">Road freight</h4>
							<p class="service-para">We offers a host of logistic management services and supply chain solutions.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-service wow fadeInUp" data-wow-duration="1.5s" data-wow-delay=".4s">
						<div class="icon-wrapper">
							<i class="flaticon-loader"></i>
						</div>
						<div class="service-txt">
							<h4 class="service-title">WARHOUSING</h4>
							<p class="service-para">We offers a host of logistic management services and supply chain solutions.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-service wow fadeInUp" data-wow-duration="1.5s" data-wow-delay=".6s">
						<div class="icon-wrapper">
							<i class="flaticon-ferry"></i>
						</div>
						<div class="service-txt">
							<h4 class="service-title">Ocean freight</h4>
							<p class="service-para">We offers a host of logistic management services and supply chain solutions.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-service wow fadeInUp" data-wow-duration="1.5s" data-wow-delay=".8s">
						<div class="icon-wrapper">
							<i class="flaticon-package"></i>
						</div>
						<div class="service-txt">
							<h4 class="service-title">Logistic freight</h4>
							<p class="service-para">We offers a host of logistic management services and supply chain solutions.</p>
						</div>
					</div>
				</div>
				<div class="col-lg-4 col-md-6">
					<div class="single-service wow fadeInUp" data-wow-duration="1.5s" data-wow-delay="1s">
						<div class="icon-wrapper">
							<i class="flaticon-baby-toy"></i>
						</div>
						<div class="service-txt">
							<h4 class="service-title">Train freight</h4>
							<p class="service-para">We offers a host of logistic management services and supply chain solutions.</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--  service section end  -->
<!--  about section start  -->
<div class="about-section home-3">
	<div class="container">
		<div class="row">
			<div class="col-lg-5">
				<div class="outer">
					<div class="inner">
						<div class="about-txt about-bg-3">
							<span class="title">about us</span>
							<h2 class="subtitle">WE ARE TRANSFIX</h2>
							<p>We offers a host of logistic management services and supply chain solutions. We provide innovative solutions with the best. Incididunt dolor sit amet, consectetur adipiscing elit, sed
								dolore magna Incididunt dolor sit amet, consectetur adipiscing elit, sed dolore magna.</p>
							<img src="<%=request.getContextPath()%>/assets/img/signature.png" alt="">
							<h5>DAVID ANDERSON</h5>
							<span>Founder & CEO</span>
						</div>
					</div>
				</div>
			</div>
			<div class="col-xl-5 offset-lg-1 col-lg-6">
				<div class="about-points">
					<div class="single-point">
						<div class="icon-wrapper">
							<i class="flaticon-worldwide"></i>
						</div>
						<div class="point-txt">
							<h4>global service</h4>
							<p>We offers a host of logistic management services and supply chain solutions. Sed ut perspiciatis unde omnis iste natus error sitvol uptatem accusantium doloremque laudantium accusantium</p>
						</div>
					</div>
					<div class="single-point">
						<div class="icon-wrapper">
							<i class="flaticon-customer-service"></i>
						</div>
						<div class="point-txt">
							<h4>24/7 Support</h4>
							<p>We offers a host of logistic management services and supply chain solutions. Sed ut perspiciatis unde omnis iste natus error sitvol uptatem accusantium doloremque laudantium accusantium</p>
						</div>
					</div>
					<div class="single-point">
						<div class="icon-wrapper">
							<i class="flaticon-email"></i>
						</div>
						<div class="point-txt">
							<h4>Instant delivery</h4>
							<p>We offers a host of logistic management services and supply chain solutions. Sed ut perspiciatis unde omnis iste natus error sitvol uptatem accusantium doloremque laudantium accusantium</p>
						</div>
					</div>
					<div class="single-point">
						<div class="icon-wrapper">
							<i class="flaticon-send"></i>
						</div>
						<div class="point-txt">
							<h4>fastest delivery</h4>
							<p>We offers a host of logistic management services and supply chain solutions. Sed ut perspiciatis unde omnis iste natus error sitvol uptatem accusantium doloremque laudantium accusantium</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--  about section end  -->
<!--  testimonial section start  -->
<div class="testimonial-section home-3">
	<div class="container">
		<div class="row">
			<div class="col-lg-6">
				<span class="title">Testimonial</span>
				<h2 class="subtitle">WHAT THEY SAY</h2>
			</div>
		</div>
		<div class="row">
			<div class="col-md-12">
				<div class="testimonial-carousel-3 owl-carousel owl-theme">
					<div class="single-testimonial">
						<div class="img-wrapper">
							<img src="<%=request.getContextPath()%>/assets/img/home_3/client_1.jpg" alt="">
						</div>
						<div class="client-desc">
							<p class="icon-wrapper">
								<i class="flaticon-quote-left"></i>
							</p>
							<p class="comment">They provide innovative solutions with the best. tempor incididunt utla bore et dolor tempor incididunt .</p>
							<h5 class="name">mARIA ALEN</h5>
							<p class="rank">Director, art media</p>
						</div>
					</div>
					<div class="single-testimonial">
						<div class="img-wrapper">
							<img src="<%=request.getContextPath()%>/assets/img/home_3/client_2.jpg" alt="">
						</div>
						<div class="client-desc">
							<p class="icon-wrapper">
								<i class="flaticon-quote-left"></i>
							</p>
							<p class="comment">They provide innovative solutions with the best. tempor incididunt utla bore et dolor tempor incididunt .</p>
							<h5 class="name">Jonathon doe</h5>
							<p class="rank">Director, art media</p>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--  testimonial section end  -->
<!--   partner section start    -->
<div class="partner-section">
	<div class="container border-bottom">
		<div class="row">
			<div class="col-md-12">
				<div class="partner-carousel owl-carousel owl-theme">
					<div class="single-partner-item">
						<div class="outer">
							<div class="inner">
								<img src="<%=request.getContextPath()%>/assets/img/partner-1.png" alt="">
							</div>
						</div>
					</div>
					<div class="single-partner-item">
						<div class="outer">
							<div class="inner">
								<img src="<%=request.getContextPath()%>/assets/img/partner-2.png" alt="">
							</div>
						</div>
					</div>
					<div class="single-partner-item">
						<div class="outer">
							<div class="inner">
								<img src="<%=request.getContextPath()%>/assets/img/partner-3.png" alt="">
							</div>
						</div>
					</div>
					<div class="single-partner-item">
						<div class="outer">
							<div class="inner">
								<img src="<%=request.getContextPath()%>/assets/img/partner-4.png" alt="">
							</div>
						</div>
					</div>
					<div class="single-partner-item">
						<div class="outer">
							<div class="inner">
								<img src="<%=request.getContextPath()%>/assets/img/partner-5.png" alt="">
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--   partner section end    -->
<!--   faq section start    -->
<div class="faq-section home-3">
	<div class="container">
		<div class="row">
			<div class="col-lg-6">
				<div class="targets">
					<div class="box wow fadeInUp" data-wow-duration="1.5s">
						<div class="icon-wrapper">
							<i class="flaticon-external-link-square-with-an-arrow-in-right-diagonal"></i>
						</div>
						<div class="box-details">
							<h4>Our mission</h4>
							<p>We offers a host of logistic management services and supply chain solutions. consectetur adipiscing elit. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium
								doloremque laudantium</p>
						</div>
					</div>
					<div class="box wow fadeInUp" data-wow-duration="1.5s" data-wow-delay=".2s">
						<div class="icon-wrapper">
							<i class="flaticon-check"></i>
						</div>
						<div class="box-details">
							<h4>Our Vision</h4>
							<p>We offers a host of logistic management services and supply chain solutions. consectetur adipiscing elit. Sed ut perspiciatis unde omnis iste natus error sit voluptatem accusantium
								doloremque laudantium</p>
						</div>
					</div>
				</div>
			</div>
			<div class="offset-lg-1 col-lg-5">
				<span class="title">FAQS</span>
				<h2 class="subtitle">FREQUENTLY ASKED QUESTIONS</h2>
				<div class="accordion" id="accordionExample">
					<div class="card wow fadeInUp" data-wow-duration="1s">
						<div class="card-header" id="headingOne">
							<h2 class="mb-0">
								<button class="btn btn-link collapsed btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="false" aria-controls="collapseOne">Why choose
									this?</button>
							</h2>
						</div>
						<div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
							<div class="card-body">They offers a host of logistic management services and supply chain . We provide innovative solutions with the best. tempor incididunt ut labore et dolor empor
								tempor incididunt innovative solutions</div>
						</div>
					</div>
					<div class="card wow fadeInUp" data-wow-duration="1s" data-wow-delay=".2s">
						<div class="card-header" id="headingTwo">
							<h2 class="mb-0">
								<button class="btn btn-link collapsed btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">Is it
									costly?</button>
							</h2>
						</div>
						<div id="collapseTwo" class="collapse" aria-labelledby="headingTwo" data-parent="#accordionExample">
							<div class="card-body">They offers a host of logistic management services and supply chain . We provide innovative solutions with the best. tempor incididunt ut labore et dolor empor
								tempor incididunt innovative solutions</div>
						</div>
					</div>
					<div class="card wow fadeInUp" data-wow-duration="1s" data-wow-delay=".4s">
						<div class="card-header" id="headingThree">
							<h2 class="mb-0">
								<button class="btn btn-link collapsed btn-block text-left" type="button" data-toggle="collapse" data-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">When
									usally product reach</button>
							</h2>
						</div>
						<div id="collapseThree" class="collapse" aria-labelledby="headingThree" data-parent="#accordionExample">
							<div class="card-body">They offers a host of logistic management services and supply chain . We provide innovative solutions with the best. tempor incididunt ut labore et dolor empor
								tempor incididunt innovative solutions</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--   faq section end    -->
<!--   quote section start    -->
<div class="quote-section quote-bg">
	<div class="container">
		<div class="row">
			<div class="offset-lg-5 col-lg-7">
				<div class="quote-form-section">
					<span class="title">Quote</span>
					<h2 class="subtitle">Request a free qoute</h2>
					<form action="#">
						<div class="row">
							<div class="col-lg-6">
								<div class="form-element">
									<input name="name" type="text" placeholder="You name">
								</div>
							</div>
							<div class="col-lg-6">
								<div class="form-element">
									<div class="select-wrapper">
										<select name="freight">
											<option value="" selected disabled>Select a Freight</option>
											<option value="">Air Freight</option>
											<option value="">Ocean Freight</option>
											<option value="">Road Freight</option>
										</select>
									</div>
								</div>
							</div>
							<div class="col-lg-6">
								<div class="form-element">
									<input name="email" type="email" placeholder="Email">
								</div>
							</div>
							<div class="col-lg-6">
								<div class="form-element">
									<input name="phone" type="text" placeholder="Phone">
								</div>
							</div>
							<div class="col-lg-12">
								<div class="form-element mb-0">
									<button type="submit" class="boxed-btn">
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
</div>
<!--   quote section end    -->
<!--   news section start    -->
<div class="news-section">
	<div class="container">
		<span class="title">Latest blog</span>
		<h2 class="subtitle">Inside The News</h2>
		<div class="row">
			<div class="col-lg-4 col-md-6">
				<div class="single-news wow fadeInRight" data-wow-duration="1.5s">
					<img src="<%=request.getContextPath()%>/assets/img/news-1.jpg" alt="">
					<div class="news-txt">
						<span class="date">November 05, 2018 - BY Admin</span>
						<a href="blog-details.html" class="title">
							<h3>Flexible shipping are increasing day by day gradually...</h3>
						</a>
						<a class="readmore" href="blog-details.html">Read More</a>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-6">
				<div class="single-news wow fadeInRight" data-wow-duration="1.5s" data-wow-delay=".2s">
					<img src="<%=request.getContextPath()%>/assets/img/news-2.jpg" alt="">
					<div class="news-txt">
						<span class="date">November 05, 2018 - BY Admin</span>
						<a href="blog-details.html" class="title">
							<h3>Big warehouse are most friendly for new shipping..</h3>
						</a>
						<a class="readmore" href="blog-details.html">Read More</a>
					</div>
				</div>
			</div>
			<div class="col-lg-4 col-md-6">
				<div class="single-news wow fadeInRight" data-wow-duration="1.5s" data-wow-delay=".4s">
					<img src="<%=request.getContextPath()%>/assets/img/news-3.jpg" alt="">
					<div class="news-txt">
						<span class="date">November 05, 2018 - BY Admin</span>
						<a href="blog-details.html" class="title">
							<h3>Keep your product in storage for long time...</h3>
						</a>
						<a class="readmore" href="blog-details.html">Read More</a>
					</div>
				</div>
			</div>
		</div>
	</div>
</div>
<!--   news section end    -->
