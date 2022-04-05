<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator"
	prefix="decorator"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<head>
<meta charset="ISO-8859-1">
<title>Chi tiet san pham</title>
</head>
<body>
	<div class="bg-main">
		<div class="container">
			<div class="box">
				<div class="breadcumb">
					<a href="./index.html">home</a> <span><i
						class='bx bxs-chevrons-right'></i></span> <a href="./products.html">all
						products</a> <span><i class='bx bxs-chevrons-right'></i></span> <a
						href="./product-detail.html">Detail</a>
				</div>
			</div>
			
			
			<div class="row product-row">
				<div class="col-5 col-md-12">
					<div class="product-img" id="product-img">
						<img
							src="${product.img }"
							alt="">
					</div>
					<div class="box">
						<div class="product-img-list">
							<div class="product-img-item">
								<img
									src="${product.img }"
									alt="">
							</div>
							<div class="product-img-item">
								<img
									src="${product.img }"
									alt="">
							</div>
							<div class="product-img-item">
								<img src="${product.img }"
									alt="">
							</div>
						</div>
					</div>
				</div>
				
				<div class="col-7 col-md-12">
				<form method="get" action='<c:url value="/addcart/${product.product_id }"/>'>
					<div class="product-info">
					
						<h1>${product.name }</h1>
						
						<div class="product-info-detail">
							<span class="product-info-detail-title">Color:</span>
							<a href="#">${product.color_name }</a>
						</div>
						<div class="product-info-detail">
							<span class="product-info-detail-title">Rated:</span> <span
								class="rating"> <i class='bx bxs-star'></i> <i
								class='bx bxs-star'></i> <i class='bx bxs-star'></i> <i
								class='bx bxs-star'></i> <i class='bx bxs-star'></i>
							</span>
						</div>
						<p class="product-description">${product.description }</p>
						<div class="product-info-price"><fmt:formatNumber
												type="number" maxFractionDigits="3" value="${product.price}" /> VND</div>
						<div class="product-quantity-wrapper">
							<span class="product-quantity-btn"> <i class='bx bx-minus'></i>
							</span> <span class="product-quantity">1</span> <span
								class="product-quantity-btn"> <i class='bx bx-plus'></i>
							</span>
						</div>
						<div>
							<button type="submit" class="btn-flat btn-hover">add to cart</button>
						</div>
						
					</div>
					</form>
				</div>
				
			</div>
			
			<div class="box">
				<div class="box-header">description</div>
				<div class="product-detail-description">
					<button class="btn-flat btn-hover btn-view-description"
						id="view-all-description">view all</button>
					<div class="product-detail-description-content">
						<p> Lorem ipsum dolor sit amet consectetur adipisicing elit.
							Impedit laudantium obcaecati odit dolorem, doloremque accusamus
							esse neque ipsa dignissimos saepe quisquam tempore perferendis
							deserunt sapiente! Recusandae illum totam earum ratione. Lorem
							ipsum dolor sit, amet consectetur adipisicing elit. Aliquam
							incidunt maxime rerum reprehenderit voluptas asperiores ipsam
							quas consequuntur maiores, at odit obcaecati vero sunt!
							Reiciendis aperiam perferendis consequuntur odio quas. Lorem
							ipsum dolor sit amet consectetur adipisicing elit. Ut quaerat eum
							veniam doloremque nihil repudiandae odio ratione culpa libero
							tempora. Expedita, quo molestias. Minus illo quis dignissimos
							aliquid sapiente error!</p>
						<img src="<c:url value="${product.img }"/>"
							alt="">
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
							Nobis accusantium officia, quae fuga in exercitationem aliquam
							labore ex doloribus repellendus beatae facilis ipsam. Veritatis
							vero obcaecati iste atque aspernatur ducimus. Lorem ipsum dolor
							sit, amet consectetur adipisicing elit. Repellat quam praesentium
							id sit amet magnam ad, dolorum, cumque iste optio itaque expedita
							eius similique, ab adipisci dicta. Quod, quibusdam quas. Lorem
							ipsum dolor sit amet consectetur adipisicing elit. Odit, in
							corrupti ipsam sint error possimus commodi incidunt suscipit sit
							voluptatum quibusdam enim eligendi animi deserunt recusandae
							earum natus voluptas blanditiis?</p>
						<img src="<c:url value="${product.img }"/>"
							alt="">
						<p>Lorem ipsum dolor sit amet consectetur adipisicing elit.
							Modi ullam quam fugit veniam ipsum recusandae incidunt, ex
							ratione, magnam labore ad tenetur officia! In, totam. Molestias
							sapiente deserunt animi porro?</p>
					</div>
				</div>
			</div>
			<div class="box">
				<div class="box-header">review</div>
				<div>
					<div class="user-rate">
						<div class="user-info">
							<div class="user-avt">
								<img src="./images/tuat.jpg" alt="">
							</div>
							<div class="user-name">
								<span class="name">User</span> <span class="rating">
									<i class='bx bxs-star'></i> <i class='bx bxs-star'></i> <i
									class='bx bxs-star'></i> <i class='bx bxs-star'></i> <i
									class='bx bxs-star'></i>
								</span>
							</div>
						</div>
						<div class="user-rate-content">Lorem ipsum dolor sit amet
							consectetur adipisicing elit. Distinctio ea iste, veritatis nobis
							amet illum, cum alias magni dolores odio, eius quo excepturi
							veniam ipsa voluptatibus natus voluptas vero? Aspernatur!</div>
					</div>
					
					<div class="box">
						<ul class="pagination">
							<li><a href="#"><i class='bx bxs-chevron-left'></i></a></li>
							<li><a href="#" class="active">1</a></li>
							<li><a href="#">2</a></li>
							<li><a href="#">3</a></li>
							<li><a href="#">4</a></li>
							<li><a href="#">5</a></li>
							<li><a href="#"><i class='bx bxs-chevron-right'></i></a></li>
						</ul>
					</div>
				</div>
			</div>
			<div class="box">
				<div class="box-header">related products</div>
				<div class="row">
				<c:forEach var="item" begin="0" end="7" items="${productbycateid }">
					<div class="col-3 col-md-6 col-sm-12">
						<div class="product-card">
							<div class="product-card-img">
								<img src="${item.img }" alt=""> <img
									src="<c:url value = "/assets/user/images/JBL_Quantum_400_Product Image_Hero Mic Up.webp"/>"
									alt="">
							</div>
							<div class="product-card-info">
								<div class="product-btn">
									<button class="btn-flat btn-hover btn-shop-now">shop
										now</button>
									<button class="btn-flat btn-hover btn-cart-add">
										<i class='bx bxs-cart-add'></i>
									</button>
									<button class="btn-flat btn-hover btn-cart-add">
										<i class='bx bxs-heart'></i>
									</button>
								</div>
								<div class="product-card-name">${item.name }</div>
								<div class="product-card-price">
									<c:if test="${item.sale != 0 }">
										<span><del><fmt:formatNumber
												type="number" maxFractionDigits="3" value="${(item.price*item.sale)/100 }" /></del></span>
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
				</c:forEach>
				</div>
			</div>
		</div>
	</div>
</body>
