<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<script src="https://code.jquery.com/jquery-2.2.4.js" charset="utf-8"></script>

<title>Cart</title>
<body>
<div class="bg-main">
	<div class="container">
		<div class="box">
			<div class="breadcumb">
				<a href="./index.html">home</a> <span><i
					class='bx bxs-chevrons-right'></i></span> <a href="./products.html">Cart</a>
			</div>
		</div>

		<div class="shopping-cart">

			<div class="cart_inner">
			<div  class="table-responsive">
			<table style="align-items: center" class="table">
				

				
					<c:if test="${Cart.size()==0 }">
						<p>Null</p>
					</c:if>
					
					<c:if test="${Cart.size()!=0 }">
					<thead>
					<tr>
						<th scope="col">Product</th>
						<th scope="col">Description</th>
						<th scope="col">Price</th>
						<th scope="col">Quantity</th>
						<th scope="col">Total</th>
						<th scope="col">Detele</th>
					</tr>
					</thead>
					<tbody>
						<c:forEach var="item" items="${Cart }">
						<tr>
						<td><div class="product-img-item">
								<img
									src="${item.value.product.img }"
									alt="">
							</div></td>
						<td><div class="description">
								<span>${item.value.product.name }</span> <span>${item.value.product.color_name }</span> <span>${item.value.product.memory_name }</span>
							</div></td>
							
						<td><div class="total-price"><fmt:formatNumber type="number" maxFractionDigits="3"
														value="${item.value.total }" /> VND</div></td>
						<td><div class="product-quantity-wrapper">
						
						<button onclick="minus()"class="product-quantity-btn"> <i class='bx bx-minus'></i></button> 
						<input style="width:20px"" type="text" style="font-size: 16px" id="quantity-cart-${item.key }"  value="${item.value.quantity }"></input> 
						<button onclick="plus()" class="product-quantity-btn plusbtn"> 
						<i class='bx bx-plus'></i></button>
						</div></td>
						<td><div class="total-price"><fmt:formatNumber type="number" maxFractionDigits="3"
														value="${item.value.total }" /> VND</div></td>
						<td><div class="product-quantity-wrapper">
							<a href='<c:url value="/deletecart/${item.key }"/>'><span class="product-quantity-btn">
								<img alt="" src='<c:url value="/assets/user/images/remove.png"></c:url>'>
							</span></a>
						</div></td>
					</tr>
					
					
					</c:forEach>
					
					<tr>
						<td>Total:</td>
						<td></td>
						<td></td>
						<td></td>
						<td><fmt:formatNumber type="number" maxFractionDigits="3"
														value="${item.value.total }" /> VND</td>
					</tr>
					</c:if>
					

				</tbody>
			</table>
			
			</div>
			</div>

		</div>
		
	</div>
</div>

<content tag="script">	
	<script type="text/javascript">
	function minus() {
		alert("ok");
		var id = $(this).data("id");
		var quantity = $("#quantity-cart-"+id).val();
		alert(quantity);
		
	}
	function plus() {
		alert("ok");
		
	}
	$(".ok").on("click", function () {
		alert("ok");
	});
		/* $(".minus-btn").on('click', function(e) {
			alert("Ok");
			e.preventDefault();
			var $this = $(this);
			var $input = $this.closest('div').find('input');
			var value = parseInt($input.val());

			if (value > 1) {
				value = value - 1;
			} else {
				value = 0;
			}

			$input.val(value);

		});

		$('.plus-btn').on('click', function(e) {
			e.preventDefault();
			var $this = $(this);
			var $input = $this.closest('div').find('input');
			var value = parseInt($input.val());

			if (value < 100) {
				value = value + 1;
			} else {
				value = 100;
			}

			$input.val(value);
		}); */
	</script>
	</content>
</body>
