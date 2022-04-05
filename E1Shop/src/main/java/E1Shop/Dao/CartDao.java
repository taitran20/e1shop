package E1Shop.Dao;

import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import E1Shop.Dto.CartDto;
import E1Shop.Dto.ProductDto;

@Repository
public class CartDao extends BaseDao{
	@Autowired
	ProductDao productDao = new ProductDao();

	public HashMap<Long, CartDto> AddCart(long id, HashMap<Long, CartDto> cart) {
		CartDto itemCart = new CartDto();
		ProductDto product = productDao.FindProductById(id);
		if(product != null && cart.containsKey(id)) {
			itemCart = cart.get(id);
			itemCart.setQuantity(itemCart.getQuantity() + 1);
			itemCart.setTotal(itemCart.getQuantity()*itemCart.getProduct().getPrice());
		}
		else {
			itemCart.setProduct(product);
			itemCart.setQuantity(1);
			double totalPrice = product.getPrice()*itemCart.getQuantity();
			itemCart.setTotal(totalPrice);
		}
		cart.put(id, itemCart);
		return cart;
	}
	
	public HashMap<Long, CartDto> EditCart(long id, int quantity, HashMap<Long, CartDto> cart) {
		CartDto itemCart = new CartDto();
		if(cart == null) {
			return cart;
		}
		if (cart.containsKey(id)) {
			itemCart = cart.get(id);
			itemCart.setQuantity(quantity);
			double totalPrice = itemCart.getProduct().getPrice()*itemCart.getQuantity();
			itemCart.setTotal(totalPrice);
		}	
		cart.put(id, itemCart);
		return cart;
	}
	
	public HashMap<Long, CartDto> DeleteCart(long id, HashMap<Long, CartDto> cart) {
		if(cart == null) {
			return cart;
		}
		if (cart.containsKey(id)) {
			cart.remove(id);
		}
		
		return cart;
	}
	
	public int TotalQuantity( HashMap<Long, CartDto> cart) {
		int totalQuantity = 0;
		for(Map.Entry<Long, CartDto> itemCart: cart.entrySet()) {
			totalQuantity += itemCart.getValue().getQuantity();
		}
		return totalQuantity;
	}
	
	public double TotalPrice( HashMap<Long, CartDto> cart) {
		double totalPrice = 0;
		for(Map.Entry<Long, CartDto> itemCart: cart.entrySet()) {
			totalPrice += itemCart.getValue().getTotal();
		}
		return totalPrice;
	}
	
	
}
