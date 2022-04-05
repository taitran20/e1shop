<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!-- header -->
<header>
	<!-- mobile menu -->
	<div class="mobile-menu bg-second">
		<a href="<c:url value="/trangchu"/>" class="mb-logo">E1Shop</a> <span
			class="mb-menu-toggle" id="mb-menu-toggle"> <i
			class='bx bx-menu'></i>
		</span>
	</div>
	<!-- end mobile menu -->
	<!-- main header -->
	<div class="header-wrapper" id="header-wrapper">
		<span class="mb-menu-toggle mb-menu-close" id="mb-menu-close">
			<i class='bx bx-x'></i>
		</span>
		<!-- top header -->
		<div class="bg-second">
			<div class="top-header container">
				<ul class="devided">
					<li><a href="#">+113</a></li>
					<li><a href="#">me</a></li>
				</ul>
				<ul class="devided">
					<li class="dropdown"><a href="">USD</a> <i
						class='bx bxs-chevron-down'></i>
						<ul class="dropdown-content">
							<li><a href="#">VND</a></li>
							<li><a href="#">JPY</a></li>
							<li><a href="#">EUR</a></li>
						</ul></li>
					<li class="dropdown"><a href="">ENGLISH</a> <i
						class='bx bxs-chevron-down'></i>
						<ul class="dropdown-content">
							<li><a href="#">VIETNAMESE</a></li>
							<li><a href="#">JAPANESE</a></li>
							<li><a href="#">FRENCH</a></li>
							<li><a href="#">SPANISH</a></li>
						</ul></li>
					<li><a href="#">ORDER TRACKING</a></li>
				</ul>
			</div>
		</div>
		<!-- end top header -->
		<!-- mid header -->
		<div class="bg-main">
			<div class="mid-header container">
				<a href="<c:url value="/trangchu"/>" class="logo">E1Shop</a>
				<div class="search">
					<input type="text" placeholder="Search"> <i
						class='bx bx-search-alt'></i>
				</div>

				<ul class="user-menu">
					<li><a href="#"><i class='bx bx-bell'></i></a></li>
					<li><a href="#"><i class='bx bx-user-circle'></i></a></li>
					<li><a href='<c:url value="/giohang"></c:url>'><i class='bx bx-cart'> </i>${TotalQuantityCart }
					</a></li>
				</ul>
			</div>
		</div>
		<!-- end mid header -->
		<!-- bottom header -->
		<div class="bg-second">
			<div class="bottom-header container">
				<ul class="main-menu">
					<li><a href="<c:url value="/trangchu"/>">home</a></li>
					<!-- mega menu -->
					<li class="mega-dropdown"><a href="./products.html">Shop<i
							class='bx bxs-chevron-down'></i></a>
						<div class="mega-content">
							<div class="row">
								<c:forEach var="item" items="${category }">
									<div class="col-3 col-md-12">
										<div class="box">
											<a href="<c:url value="/category/${item.id }"/>"><h3>${item.name }</h3></a>
											<ul>
												<%-- <li><a href="#">${item.name }</a></li> --%>
											</ul>
										</div>
									</div>

								</c:forEach>


							</div>
							<div class="row img-row">
								<div class="col-3">
									<div class="box">
										<img
											src="<c:url value="/assets/user/images/kisspng-beats-electronics-headphones-apple-beats-studio-red-headphones.png"></c:url>"
											alt="">
									</div>
								</div>
								<div class="col-3">
									<div class="box">
										<img
											src="<c:url value ="/assets/user/images/JBL_TUNE220TWS_ProductImage_Pink_ChargingCaseOpen.png"/>"
											alt="">
									</div>
								</div>
								<div class="col-3">
									<div class="box">
										<img
											src="<c:url value ="/assets/user/images/JBL_JR 310BT_Product Image_Hero_Skyblue.png"/>"
											alt="">
									</div>
								</div>
								<div class="col-3">
									<div class="box">
										<img
											src="<c:url value ="/assets/user/images/JBLHorizon_001_dvHAMaster.png"/>"
											alt="">
									</div>
								</div>
							</div>
						</div></li>
					<!-- end mega menu -->
					<li><a href="#">blog</a></li>
					<li><a href="#">contact</a></li>
				</ul>
			</div>
		</div>
		<!-- end bottom header -->
	</div>
	<!-- end main header -->
</header>
<!-- end header -->