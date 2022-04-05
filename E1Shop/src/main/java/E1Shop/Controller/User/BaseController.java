package E1Shop.Controller.User;

import javax.annotation.PostConstruct;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import E1Shop.Service.User.HomeServiceImpl;
import E1Shop.Service.User.ProductServiceImpl;

@Controller
public class BaseController {
	@Autowired
	HomeServiceImpl _homeServiceImpl;
	@Autowired
	ProductServiceImpl _productServiceImpl;
	public ModelAndView _mvShare = new ModelAndView();
	
	@PostConstruct
	public ModelAndView Init() {
		_mvShare.addObject("menu", _homeServiceImpl.GetDataMenu());
		return _mvShare;
	}
}
