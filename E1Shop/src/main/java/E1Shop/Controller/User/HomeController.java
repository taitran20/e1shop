package E1Shop.Controller.User;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController extends BaseController{
	
	
	@RequestMapping(value = {"/","/trangchu"})
	public ModelAndView Index() {
		_mvShare.addObject("slides", _homeServiceImpl.GetDataSilde());
		_mvShare.addObject("category", _homeServiceImpl.GetDataCategory());
		_mvShare.addObject("newproduct", _homeServiceImpl.GetDataNewProduct());
		
		_mvShare.addObject("hl_product", _homeServiceImpl.GetDataHighlightProduct());
		 
		_mvShare.setViewName("user/index");
		return _mvShare;
	}
	
	

}
