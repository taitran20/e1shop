package E1Shop.Controller.User;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class ProductController extends BaseController{
	@RequestMapping(value = {"/product-detail/{id}"})
	public ModelAndView Index(@PathVariable long id) {
		//_mvShare.addObject("slides", _homeServiceImpl.GetDataSilde());
		_mvShare.addObject("category", _homeServiceImpl.GetDataCategory());
		_mvShare.addObject("product", _productServiceImpl.GetProductById(id));
	    
	    int Category_id = _productServiceImpl.GetProductById(id).getCategory_id();
	    _mvShare.addObject("productbycateid", _productServiceImpl.GetProductByCategoryId(Category_id));
		_mvShare.setViewName("user/products/product");
		return _mvShare;
	}
}
