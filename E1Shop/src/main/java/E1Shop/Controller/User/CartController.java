package E1Shop.Controller.User;

import java.util.HashMap;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import E1Shop.Dto.CartDto;
import E1Shop.Service.User.CartServiceImpl;

@Controller
public class CartController extends BaseController{
	@Autowired
	private CartServiceImpl _cartServiceImpl = new CartServiceImpl();
	
	@RequestMapping(value = "addcart/{id}")
	public String AddCart(HttpServletRequest request,HttpSession session, @PathVariable long id) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>)session.getAttribute("Cart");
		if(cart==null) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = _cartServiceImpl.AddCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantityCart", _cartServiceImpl.TotalQuantity(cart));
		session.setAttribute("TotalPriceCart", _cartServiceImpl.TotalPrice(cart));
		return "redirect:"+ request.getHeader("Referer");
		
	}

	/*
	 * @RequestMapping(value = "editcart/{id}") public String
	 * EditCart(HttpServletRequest request,HttpSession session, @PathVariable long
	 * id) { HashMap<Long, CartDto> cart = (HashMap<Long,
	 * CartDto>)session.getAttribute("Cart"); if(cart==null) { cart = new
	 * HashMap<Long, CartDto>(); } cart = _cartServiceImpl.EditCart(id,quantity,
	 * cart); session.setAttribute("Cart", cart);
	 * session.setAttribute("TotalQuantityCart",
	 * _cartServiceImpl.TotalQuantity(cart)); session.setAttribute("TotalPriceCart",
	 * _cartServiceImpl.TotalPrice(cart)); return "redirect:"+
	 * request.getHeader("Referer");
	 * 
	 * }
	 */
	@RequestMapping(value = "deletecart/{id}")
	public String DeleteCart(HttpServletRequest request,HttpSession session, @PathVariable long id) {
		HashMap<Long, CartDto> cart = (HashMap<Long, CartDto>)session.getAttribute("Cart");
		if(cart==null) {
			cart = new HashMap<Long, CartDto>();
		}
		cart = _cartServiceImpl.DeleteCart(id, cart);
		session.setAttribute("Cart", cart);
		session.setAttribute("TotalQuantityCart", _cartServiceImpl.TotalQuantity(cart));
		session.setAttribute("TotalPriceCart", _cartServiceImpl.TotalPrice(cart));
		return "redirect:"+ request.getHeader("Referer");
		
	}
	
	@RequestMapping(value = "giohang")
	public ModelAndView Index() {
		_mvShare.addObject("slides", _homeServiceImpl.GetDataSilde());
		_mvShare.addObject("category", _homeServiceImpl.GetDataCategory());
		_mvShare.addObject("newproduct", _homeServiceImpl.GetDataNewProduct());
		
		_mvShare.addObject("hl_product", _homeServiceImpl.GetDataHighlightProduct());
		 
		_mvShare.setViewName("user/cart/listcart");
		return _mvShare;
	}
}
