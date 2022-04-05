package E1Shop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import E1Shop.Dto.ProductDto;
import E1Shop.Entity.Category;
import E1Shop.Entity.Menu;
import E1Shop.Entity.Slides;

@Service
public interface IHomeService {
	@Autowired
	public List<Slides> GetDataSilde();
	@Autowired
	public List<Category> GetDataCategory();
	@Autowired
	public List<Menu> GetDataMenu();
	@Autowired
	public List<ProductDto> GetDataNewProduct();
	
	@Autowired 
	public List<ProductDto> GetDataHighlightProduct();
	 
}
