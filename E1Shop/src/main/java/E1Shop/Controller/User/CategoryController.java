package E1Shop.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import E1Shop.Dto.PaginatesDto;
import E1Shop.Service.User.CategoryServiceImpl;
import E1Shop.Service.User.PaginatesServiceImpl;

@Controller
public class CategoryController extends BaseController{
	@Autowired
	private CategoryServiceImpl _categoryServiceImpl;
	@Autowired
	private PaginatesServiceImpl _paginateServiceImpl;
	
	private int totalProductPage = 12;
	
	@RequestMapping(value = {"/category/{id}"})
	public ModelAndView Product(@PathVariable String id) {		
		_mvShare.setViewName("user/products/category");
		_mvShare.addObject("newproduct", _homeServiceImpl.GetDataNewProduct());
		_mvShare.addObject("category", _homeServiceImpl.GetDataCategory());
		_mvShare.addObject("hl_product", _homeServiceImpl.GetDataHighlightProduct());
		
		_mvShare.addObject("categoryid", id);
		
		int totalData = _categoryServiceImpl.GetDataProductByCategoryId(Integer.parseInt(id)).size();
		PaginatesDto paginatesDto = _paginateServiceImpl.GetInfoPaginates(totalData, totalProductPage,1);

		_mvShare.addObject("paginateinfo", paginatesDto);
		_mvShare.addObject("productpaginate", _categoryServiceImpl.GetDataProductPaginates(Integer.parseInt(id),paginatesDto.getStart(), totalProductPage));
		return _mvShare;
	}
	
	@RequestMapping(value = {"/category/{id}/{currentPage}"})
	public ModelAndView Product(@PathVariable String id, @PathVariable String currentPage) {		
		_mvShare.setViewName("user/products/category");
		_mvShare.addObject("newproduct", _homeServiceImpl.GetDataNewProduct());
		_mvShare.addObject("category", _homeServiceImpl.GetDataCategory());
		_mvShare.addObject("hl_product", _homeServiceImpl.GetDataHighlightProduct());
		
		_mvShare.addObject("categoryid", id);
		
		int totalData = _categoryServiceImpl.GetDataProductByCategoryId(Integer.parseInt(id)).size();
		PaginatesDto paginatesDto = _paginateServiceImpl.GetInfoPaginates(totalData, totalProductPage,Integer.parseInt(currentPage));

		_mvShare.addObject("paginateinfo", paginatesDto);
		_mvShare.addObject("productpaginate", _categoryServiceImpl.GetDataProductPaginates(Integer.parseInt(id),paginatesDto.getStart(), totalProductPage));
		return _mvShare;
	}
}
