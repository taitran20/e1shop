<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<title>San pham</title>
<body>
	<div class="bg-main">
		<div class="container">
			<div class="box">
				<div class="breadcumb">
					<a href="<c:url value="/trangchu"/>">home</a> <span><i
						class='bx bxs-chevrons-right'></i></span> <a
						href="<c:url value="/category/0"/>">all products</a>
				</div>
			</div>
			<div class="box">
				<div class="row">
					<div class="col-3 filter-col" id="filter-col">
						<div class="box filter-toggle-box">
							<button class="btn-flat btn-hover" id="filter-close">close</button>
						</div>
						<div class="box">
							<span class="filter-header"> Categories</span>
							<ul class="filter-list">
								<c:forEach var="item" items="${category }">
									<li><a href="<c:url value="/category/${item.id }"/>">${item.name }</a></li>
								</c:forEach>


							</ul>
						</div>
						<div class="box">
							<span class="filter-header"> Price </span>
							<div class="price-range">
								<input type="text"> <span>-</span> <input type="text">
							</div>
						</div>
						<div class="box">
							<ul class="filter-list">
								<li>
									<div class="group-checkbox">
										<input type="checkbox" id="status1"> <label
											for="status1"> On sale <i class='bx bx-check'></i>
										</label>
									</div>
								</li>
								<li>
									<div class="group-checkbox">
										<input type="checkbox" id="status2"> <label
											for="status2"> In stock <i class='bx bx-check'></i>
										</label>
									</div>
								</li>
								<li>
									<div class="group-checkbox">
										<input type="checkbox" id="status3"> <label
											for="status3"> Featured <i class='bx bx-check'></i>
										</label>
									</div>
								</li>
							</ul>
						</div>
						<div class="box">
							<span class="filter-header"> Brands </span>
							<ul class="filter-list">
								<li>
									<div class="group-checkbox">
										<input type="checkbox" id="remember1" checked="checked">
										<label for="remember1"> JBL <i class='bx bx-check'></i>
										</label>
									</div>
								</li>
								<li>
									<div class="group-checkbox">
										<input type="checkbox" id="remember2"> <label
											for="remember2"> Beat <i class='bx bx-check'></i>
										</label>
									</div>
								</li>
								<li>
									<div class="group-checkbox">
										<input type="checkbox" id="remember3"> <label
											for="remember3"> Logitech <i class='bx bx-check'></i>
										</label>
									</div>
								</li>
								<li>
									<div class="group-checkbox">
										<input type="checkbox" id="remember4"> <label
											for="remember4"> Samsung <i class='bx bx-check'></i>
										</label>
									</div>
								</li>
								<li>
									<div class="group-checkbox">
										<input type="checkbox" id="remember5"> <label
											for="remember5"> Sony <i class='bx bx-check'></i>
										</label>
									</div>
								</li>
							</ul>
						</div>
						<div class="box">
							<span class="filter-header"> Colors </span>
							<ul class="filter-list">
								<li>
									<div class="group-checkbox">
										<input type="checkbox" id="remember1"> <label
											for="remember1"> Red <i class='bx bx-check'></i>
										</label>
									</div>
								</li>
								<li>
									<div class="group-checkbox">
										<input type="checkbox" id="remember2"> <label
											for="remember2"> Blue <i class='bx bx-check'></i>
										</label>
									</div>
								</li>
								<li>
									<div class="group-checkbox">
										<input type="checkbox" id="remember3"> <label
											for="remember3"> White <i class='bx bx-check'></i>
										</label>
									</div>
								</li>
								<li>
									<div class="group-checkbox">
										<input type="checkbox" id="remember4"> <label
											for="remember4"> Pink <i class='bx bx-check'></i>
										</label>
									</div>
								</li>
								<li>
									<div class="group-checkbox">
										<input type="checkbox" id="remember5"> <label
											for="remember5"> Yellow <i class='bx bx-check'></i>
										</label>
									</div>
								</li>
							</ul>
						</div>
						<div class="box">
							<span class="filter-header"> rating </span>
							<ul class="filter-list">
								<li>
									<div class="group-checkbox">
										<input type="checkbox" id="remember1"> <label
											for="remember1"> <span class="rating"> <i
												class='bx bxs-star'></i> <i class='bx bxs-star'></i> <i
												class='bx bxs-star'></i> <i class='bx bxs-star'></i> <i
												class='bx bxs-star'></i>
										</span> <i class='bx bx-check'></i>
										</label>
									</div>
								</li>
								<li>
									<div class="group-checkbox">
										<input type="checkbox" id="remember1"> <label
											for="remember1"> <span class="rating"> <i
												class='bx bxs-star'></i> <i class='bx bxs-star'></i> <i
												class='bx bxs-star'></i> <i class='bx bxs-star'></i> <i
												class='bx bx-star'></i>
										</span> <i class='bx bx-check'></i>
										</label>
									</div>
								</li>
								<li>
									<div class="group-checkbox">
										<input type="checkbox" id="remember1"> <label
											for="remember1"> <span class="rating"> <i
												class='bx bxs-star'></i> <i class='bx bxs-star'></i> <i
												class='bx bxs-star'></i> <i class='bx bx-star'></i> <i
												class='bx bx-star'></i>
										</span> <i class='bx bx-check'></i>
										</label>
									</div>
								</li>
								<li>
									<div class="group-checkbox">
										<input type="checkbox" id="remember1"> <label
											for="remember1"> <span class="rating"> <i
												class='bx bxs-star'></i> <i class='bx bxs-star'></i> <i
												class='bx bx-star'></i> <i class='bx bx-star'></i> <i
												class='bx bx-star'></i>
										</span> <i class='bx bx-check'></i>
										</label>
									</div>
								</li>
								<li>
									<div class="group-checkbox">
										<input type="checkbox" id="remember1"> <label
											for="remember1"> <span class="rating"> <i
												class='bx bxs-star'></i> <i class='bx bx-star'></i> <i
												class='bx bx-star'></i> <i class='bx bx-star'></i> <i
												class='bx bx-star'></i>
										</span> <i class='bx bx-check'></i>
										</label>
									</div>
								</li>
							</ul>
						</div>
					</div>
					<div class="col-9 col-md-12">
						<div class="box filter-toggle-box">
							<button class="btn-flat btn-hover" id="filter-toggle">filter</button>
						</div>
						<div class="box">
							<c:if test="${productpaginate.size()>0 }">
								<div class="row">
									<c:forEach var="item"  items="${productpaginate }" varStatus="loop">
										<a href="<c:url value="/product-detail/${item.product_id }"/>">
											<div class="col-4 col-md-6 col-sm-12">
											
												<div class="product-card">
													<div class="product-card-img">
														<img src="${item.img }" alt=""> <img
															src="./images/JBL_JR 310BT_Product Image_Detail_Skyblue.png"
															alt="">
													</div>
													<div class="product-card-info">
														<div class="product-btn">
															<a href="<c:url value="/product-detail/${item.product_id }"/>"><button class="btn-flat btn-hover btn-shop-now">shop now</button></a>
															<button class="btn-flat btn-hover btn-cart-add">
																<i class="bx bxs-cart-add"></i>
															</button>
															<button class="btn-flat btn-hover btn-cart-add">
																<i class="bx bxs-heart"></i>
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
																		type="number" maxFractionDigits="3"
																		value="${item.price}" /> VND</span>
															</c:if>
															<c:if test="${item.sale == 0 }">
																<span class="curr-price"><fmt:formatNumber
																		type="number" maxFractionDigits="3"
																		value="${item.price}" /> VND</span>
															</c:if>
														</div>
													</div>
												</div>
												
											</div>
											</a>
											 <c:if
												test="${(loop.index+1)%3==0 || (loop.index+1) == productpaginate.size()}">
								</div>
								
								<c:if test="${(loop.index+1) < productpaginate.size()}">
									<div class="row">
								</c:if>
							</c:if>
							
							</c:forEach>

							</c:if>

						</div>

						<div class="box">
							<ul class="pagination">
								<li><a href="#"><i class='bx bxs-chevron-left'></i></a></li>
								<c:forEach var="item" begin="1" end="${paginateinfo.totalPage}"
									varStatus="loop">
									<c:if test="${loop.index == paginateinfo.currentPage }">
										<li><a class="active"
											href="<c:url value="/category/${categoryid }/${loop.index}"/>">${loop.index}</a></li>
									</c:if>
									<c:if test="${loop.index != paginateinfo.currentPage }">
										<li><a
											href="<c:url value="/category/${categoryid }/${loop.index }"/>">${loop.index}</a></li>
									</c:if>
								</c:forEach>
								<li><a href="#"><i class='bx bxs-chevron-right'></i></a></li>
							</ul>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
</body>
