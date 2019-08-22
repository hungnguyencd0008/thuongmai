<!DOCTYPE html>
<html lang="en">
<head>
	<base href="{{asset('layout/frontend')}}/">
	<meta charset="UTF-8">
	<title>@yield('title')</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap.min.css">
	<script src="vendor/jquery.min.js"></script>
	<script src="vendor/bootstrap.min.js"></script>
	<link rel="stylesheet" href="vendor/fontawesome/css/all.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
	<!-- <script src="js/jquery-1.12.3.js"></script>
		<script type="text/javascript"  src="js/script.js"></script> -->
<script type="text/javascript" src="js/jquery-3.2.1.min.js"></script>

	</head>
	<body>


		<header class="header"><!-- header -->
			<div class=" header__col-dan-hang" >
				<div class="header__tc">
					<a class="header__logo" title="Về trang chủ" href="{{asset('http://localhost:8080/Hoclaravel/demo/thuongmai/public/')}}" aria-label="logo">
						<i class="fas fa-graduation-cap"></i>
					</a>
					<form class="header__form" method="get" action="{{asset('search/')}}">
						<input class="header__top-input " name="result"  placeholder="Bạn tìm gì..."  >
						<button class="header__btntop" aria-label="tìm kiếm" type="submit"><i class="fas fa-search"></i></button>
					</form>
					

				</div>

				<nav class="header__menu text-sm-left">
					<ul>
						<li><a href="{{asset('dienthoai')}}" class="header__mobile" title="Điện thoại di động, smartphone">
							<i class="fas fa-mobile"></i>Điện thoại
						</a></li>

						<li><a href="{{asset('tablet')}}" class="header__tablet" title="Máy tính bảng, tablet">
							<i class="fas fa-tablet"></i>Tablet
						</a></li>
						<li><a href="{{asset('laptop')}}" class="header__laptop" title="Máy tính xách tay, Laptop">
							<i class="fas fa-laptop-code"></i>Laptop
						</a></li>
						<li><a href="{{asset('phukien')}}" class="header__phukien" title="Phụ kiện điện thoại di động, phụ kiện tablet, phụ kiện lapto">
							<i class="fas fa-headphones-alt"></i>Phụ kiện
						</a></li>
						<li><a href="{{asset('dongho')}}" class="header__smartwatch" title="Đồng hồ thông minh">
							<i class="far fa-clock"></i>Đồng hồ
						</a></li>
						<li><a href="{{asset('dienmay')}}" class="header__dienmay" title="Máy cũ giá rẻ, máy đổi trả thegioididong">
							<i class="fas fa-charging-station"></i>Điện máy
						</a></li>							
					</ul>
				</nav>

				<div class="header__icon-rh">
					
					<p>Giỏ hàng</p><i class="fas fa-cart-arrow-down" style="color: #fff;font-size: 50px;"></i>
					<a href="{{asset('cart/show')}}" style="margin-left: -27px;">{{Cart::count()}}</a>
				</div>
			</div>
		</header> <!-- end header -->




		<div class="container width-fix"> 
			<div class="row">

				<section class="khoi-slide "> <!-- khoi slide -->

					<div class="col-xs-8">
						<div id="carousel-id" class="carousel slide" data-ride="carousel">
							<ol class="carousel-indicators">
								<li data-target="#carousel-id" data-slide-to="0" class=""></li>
								<li data-target="#carousel-id" data-slide-to="1" class=""></li>
								<li data-target="#carousel-id" data-slide-to="2" class="active"></li>
							</ol>
							<div class="carousel-inner">							
								<div class="item active">
									<img src="images/slide/slide1.gif" class="img-responsive">						
								</div>
								<div class="item ">
									<img src="images/slide/slide2.png" class="img-responsive">						
								</div>
								<div class="item ">
									<img src="images/slide/slide3.png" class="img-responsive">						
								</div>
								<div class="item ">
									<img src="images/slide/slide4.png" class="img-responsive">						
								</div>
								<div class="item ">
									<img src="images/slide/slide5.png" class="img-responsive">						
								</div>
							</div>
							<a class="left carousel-control" href="#carousel-id" data-slide="prev"><span class="glyphicon glyphicon-chevron-left"></span></a>
							<a class="right carousel-control" href="#carousel-id" data-slide="next"><span class="glyphicon glyphicon-chevron-right"></span></a>
						</div>
					</div>
					<div class="col-xs-4 khoang-padding">
						<div class="khoi-slide__banner">
							<figure>
								<img src="images/slide/baner_sl1.png" class="img-responsive">					
							</figure>
							<figure>
								<img src="images/slide/baner_sl2.png" class="img-responsive">						
							</figure>
						</div>
					</div>

				</section> <!--end khoi slide -->


				<div class="col-xs-12">
					<section class="khoi-baner-qc-n ">	
						<figure>
							<img src="images/banner/banner-n.png" class="img-responsive">
						</figure>
					</section> <!-- end khoi baner qc ngang -->	
				</div>


			</div>
		</div>





		<!--main-->
		@yield('main')
		<!----end main-->




		<!-- FOOTER -->
		<footer class="footer ">
			<div class="container width-fix"> 
				<div class="row">
					<div class="col-xs-4 ">

						<ul class="footer__colfoot footer-left">
							<li><a href="" title="Hướng dẫn mua trả góp">Tìm hiểu về mua trả góp</a></li>
							<li><a href="" title="Tìm trung tâm bảo hành">Chính sách bảo hành</a></li>
							<li><a href="" title="Chính sách đổi trả">Chính sách đổi trả</a></li>
							<li><a href="" title="Giao hàng &amp; Thanh toán">Giao hàng &amp; Thanh toán</a></li>
							<li class=""><a title="Nội quy cửa hàng">Nội quy cửa hàng</a></li>
							<li class=""><a title="Chất lượng phục vụ">Chất lượng phục vụ</a></li>
							<li class=""><a title="Thông tin trao thưởng">Thông tin trao thưởng</a></li>
						</ul>

					</div>

					<div class="col-xs-4 ">
						<ul class="footer__colfoot footer-center">
							<li><a title="Giới thiệu công ty" >Giới thiệu công ty </a></li>
							<li><a title="Tuyển dụng">Tuyển dụng</a></li>
							<li><a title="Gửi góp ý, khiếu nại">Gửi góp ý, khiếu nại</a></li>
							<li><a title="Tìm siêu thị (1825  shop)">Tìm siêu thị <span>(1825 shop)</span></a></li>
							<li>
								<a class="" href="" title="Xem bản mobile">Xem bản mobile</a>
							</li>
						</ul>

					</div>

					<div class="col-xs-4 ">

						<ul class="footer__colfoot footer-right">
							<li>
								<p>Gọi mua hàng <a href="">1800.1060</a> (7:30 - 22:00)</p>
								<p>Gọi khiếu nại &nbsp; <a >1800.1062</a> (8:00 - 21:30)</p>
								<p>Gọi bảo hành &nbsp; <a >1800.1064</a> (8:00 - 21:00)</p>
								<p>Hỗ trợ kỹ thuật <a href="">1800.1763</a> (7:30 - 22:00)</p>

							</li>
						</ul>

					</div>

				</div>
			</div>
		</footer>
		<!--END FOOTER -->



	</body>
	</html>