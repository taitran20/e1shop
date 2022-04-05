<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<title>Trang chu</title>
<body>

	<!-- hero section -->
	<div class="hero">
		<div class="slider">
			<div class="container">

				<c:forEach var="item" items="${slides }" varStatus="index">
					<c:if test="${index.first }">
						<div class="item active"></div>
					</c:if>

					<c:if test="${not index.first }">
						<div class="item"></div>
					</c:if>


					<div class="slide">
						<div class="info">
							<div class="info-content">
								<h3 class="top-down">JBL TUNE 750TNC</h3>
								<h2 class="top-down trans-delay-0-2">Next-gen design</h2>
								<p class="top-down trans-delay-0-4">Lorem ipsum dolor sit
									amet consectetur adipisicing elit. Obcaecati dolor commodi
									dignissimos culpa, eaque eos necessitatibus possimus veniam,
									cupiditate rerum deleniti? Libero, ducimus error? Beatae velit
									dolore sint explicabo! Fugit.</p>
								<div class="top-down trans-delay-0-6">
									<button class="btn-flat btn-hover">
										<span>shop now</span>
									</button>
								</div>
							</div>
						</div>
						<c:if test="${item.id==1 }">
							<div class="img left-right">
								<img
									src="<c:url value="/assets/user/images/${item.img }"></c:url>"
									alt="">
							</div>

						</c:if>

						<c:if test="${item.id==2}">
							<div class="img right-left">
								<img
									src="<c:url value="/assets/user/images/${item.img }"></c:url>"
									alt="">
							</div>

						</c:if>

						<c:if test="${item.id==3}">
							<div class="img top-down">
								<img
									src="<c:url value="/assets/user/images/${item.img }"></c:url>"
									alt="">
							</div>

						</c:if>
					</div>

				</c:forEach>
			</div>
			<!-- slider controller -->

			<button class="slide-controll slide-next">
				<i class='bx bxs-chevron-right'></i>
			</button>
			<button class="slide-controll slide-prev">
				<i class='bx bxs-chevron-left'></i>
			</button>
			<!-- end slider controller -->
		</div>

	</div>


	</div>
	<!-- end hero section -->

	<!-- promotion section -->
	<div class="promotion">

		<div class="row">
			<div class="col-4 col-md-12 col-sm-12">
				<div class="promotion-box">
					<div class="text">
						<h3>Headphone & Earbuds</h3>
						<button class="btn-flat btn-hover">
							<span>shop collection</span>
						</button>
					</div>
					<img
						src="<c:url value="/assets/user/images/JBLHorizon_001_dvHAMaster.png"></c:url>"
						alt="">
				</div>
			</div>
			<div class="col-4 col-md-12 col-sm-12">
				<div class="promotion-box">
					<div class="text">
						<h3>JBL Quantum Series</h3>
						<button class="btn-flat btn-hover">
							<span>shop collection</span>
						</button>
					</div>
					<img
						src="<c:url value = "/assets/user/images/kisspng-beats-electronics-headphones-apple-beats-studio-red-headphones.png"/>"
						alt="">
				</div>
			</div>
			<div class="col-4 col-md-12 col-sm-12">
				<div class="promotion-box">
					<div class="text">
						<h3>True Wireless Earbuds</h3>
						<button class="btn-flat btn-hover">
							<span>shop collection</span>
						</button>
					</div>
					<img
						src="<c:url value = "/assets/user/images/JBL_TUNE220TWS_ProductImage_Pink_ChargingCaseOpen.png"/>"
						alt="">
				</div>
			</div>
		</div>
	</div>
	<!-- end promotion section -->

	<!-- product list -->
	<div class="section">
		<div class="container">
			<div class="section-header">
				<h2>Latest product</h2>
			</div>
			<div class="row">
				<c:forEach var="item" items="${newproduct }">
					<a href="<c:url value="/product-detail/${item.product_id }"/>">
						<div class="col-3 col-md-6 col-sm-12">
							<div class="product-card">
								<div class="product-card-img">
									<img src="${item.img }" alt=""> <img
										src="<c:url value = "/assets/user/images/JBL_Quantum_400_Product Image_Hero Mic Up.webp"/>"
										alt="">
								</div>

								<div class="product-card-info">

									<div class="product-btn">
										<a href="<c:url value="/product-detail/${item.product_id }"/>">
											<button type="submit" class="btn-flat btn-hover btn-shop-now">shop
												now</button>
										</a>
										<a href="<c:url value="/addcart/${item.product_id }"/>">
											<button class="btn-flat btn-hover btn-cart-add">
												<i class='bx bxs-cart-add'></i>
											</button>
										</a>
										<button class="btn-flat btn-hover btn-cart-add">
											<i class='bx bxs-heart'></i>
										</button>
									</div>

									<div class="product-card-name">${item.name }</div>
									<div class="product-card-price">
										<c:if test="${item.sale != 0 }">
											<span><del>
													<fmt:formatNumber type="number" maxFractionDigits="3"
														value="${(item.price*item.sale)/100 }" />
												</del></span>
											<span class="curr-price"><fmt:formatNumber
													type="number" maxFractionDigits="3" value="${item.price}" />
												VND</span>
										</c:if>
										<c:if test="${item.sale == 0 }">
											<span class="curr-price"><fmt:formatNumber
													type="number" maxFractionDigits="3" value="${item.price}" />
												VND</span>
										</c:if>

									</div>


								</div>

							</div>
						</div>
					</a>
				</c:forEach>
			</div>
			<div class="section-footer">
				<a href="<c:url value="/category/0"/>" class="btn-flat btn-hover">view
					all</a>
			</div>
		</div>
	</div>
	<!-- end product list -->

	<!-- special product -->
	<div class="bg-second">
		<div class="section container">
			<div class="row">
				<div class="col-4 col-md-4">
					<div class="sp-item-img">
						<img
							src="<c:url value = "/assets/user/images/kisspng-beats-electronics-headphones-apple-beats-studio-red-headphones.png"/>"
							alt="">
					</div>
				</div>
				<div class="col-7 col-md-8">
					<div class="sp-item-info">
						<div class="sp-item-name">JBL TUNE 750TNC</div>
						<p class="sp-item-description">Lorem ipsum dolor sit amet
							consectetur adipisicing elit. Labore dignissimos itaque et eaque
							quod harum vero autem? Reprehenderit enim non voluptate! Qui
							provident modi est non eius ratione, debitis iure.</p>
						<button class="btn-flat btn-hover">shop now</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<!-- end special product -->

	<!-- product list -->
	<div class="section">
		<div class="container">
			<div class="section-header">
				<h2>featured products</h2>
			</div>
			<div class="row">
				<c:forEach var="item" items="${hl_product }">
					<a href="<c:url value="/product-detail/${item.product_id }"/>">
						<div class="col-3 col-md-6 col-sm-12">
							<div class="product-card">
								<div class="product-card-img">
									<img src="${item.img }" alt=""> <img
										src="<c:url value = "/assets/user/images/JBL_Quantum_400_Product Image_Hero Mic Up.webp"/>"
										alt="">
								</div>
								<div class="product-card-info">
									<div class="product-btn">
										<a href="<c:url value="/product-detail/${item.product_id }"/>"><button
												class="btn-flat btn-hover btn-shop-now">shop now</button></a> 
										<a href="<c:url value="/addcart/${item.product_id }"/>">
											<button class="btn-flat btn-hover btn-cart-add">
												<i class='bx bxs-cart-add'></i>
											</button>
										</a>
										<button class="btn-flat btn-hover btn-cart-add">
											<i class='bx bxs-heart'></i>
										</button>
									</div>
									<div class="product-card-name">${item.name }</div>
									<div class="product-card-price">
										<c:if test="${item.sale != 0 }">
											<span><del>
													<fmt:formatNumber type="number" maxFractionDigits="3"
														value="${(item.price*item.sale)/100 }" />
												</del></span>
											<span class="curr-price"><fmt:formatNumber
													type="number" maxFractionDigits="3" value="${item.price}" />
												VND</span>
										</c:if>
										<c:if test="${item.sale == 0 }">
											<span class="curr-price"><fmt:formatNumber
													type="number" maxFractionDigits="3" value="${item.price}" />
												VND</span>
										</c:if>
									</div>
								</div>
							</div>
						</div>
					</a>
				</c:forEach>
			</div>
			<div class="section-footer">
				<a href="<c:url value="/category/0"/>" class="btn-flat btn-hover">view
					all</a>
			</div>
		</div>
	</div>
	<!-- end product list -->

	<div class="section">
		<div class="container">
			<div class="section-header">
				<h2>latest blog</h2>
			</div>
			<div class="blog">
				<div class="blog-img">
					<img
						src="<c:url value = "/assets/user/images/JBL_Quantum400_Lifestyle1.png"/>"
						alt="">
				</div>
				<div class="blog-info">
					<div class="blog-title">Lorem ipsum dolor sit amet</div>
					<div class="blog-preview">Lorem ipsum dolor, sit amet
						consectetur adipisicing elit. Quasi, eligendi dolore. Sapiente
						omnis numquam mollitia asperiores animi, veritatis sint illo
						magnam, voluptatum labore, quam ducimus! Nisi doloremque
						praesentium laudantium repellat.</div>
					<button class="btn-flat btn-hover">read more</button>
				</div>
			</div>
			<div class="blog row-revere">
				<div class="blog-img">
					<img
						src="<c:url value = "/assets/user/images/JBL_TUNE220TWS_Lifestyle_black.png"/>"
						alt="">
				</div>
				<div class="blog-info">
					<div class="blog-title">Lorem ipsum dolor sit amet</div>
					<div class="blog-preview">Lorem ipsum dolor, sit amet
						consectetur adipisicing elit. Quasi, eligendi dolore. Sapiente
						omnis numquam mollitia asperiores animi, veritatis sint illo
						magnam, voluptatum labore, quam ducimus! Nisi doloremque
						praesentium laudantium repellat.</div>
					<button class="btn-flat btn-hover">read more</button>
				</div>
			</div>
			<div class="section-footer">
				<a href="<c:url value="/category/0"/>" class="btn-flat btn-hover">view
					all</a>
			</div>
		</div>
	</div>
	<!-- end blogs -->
</body>