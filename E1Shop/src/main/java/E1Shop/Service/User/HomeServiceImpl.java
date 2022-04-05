package E1Shop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import E1Shop.Dao.CategoryDao;
import E1Shop.Dao.MenuDao;
import E1Shop.Dao.ProductDao;
import E1Shop.Dao.SlidesDao;
import E1Shop.Dto.ProductDto;
import E1Shop.Entity.Category;
import E1Shop.Entity.Menu;
import E1Shop.Entity.Slides;
@Service
public class HomeServiceImpl implements IHomeService{
	@Autowired
	private SlidesDao slidesDao;
	@Autowired
	private CategoryDao categoryDao;
	@Autowired
	private MenuDao menuDao;
	@Autowired
	private ProductDao productDao;


	@Override
	public List<Slides> GetDataSilde() {
		// TODO Auto-generated method stub
		return slidesDao.GetDataSilde();
	}

	public List<Category> GetDataCategory() {
		// TODO Auto-generated method stub
		return categoryDao.GetDataCategory();
	}

	public List<Menu> GetDataMenu() {
		// TODO Auto-generated method stub
		return menuDao.GetDataMenu();
	}



	@Override
	public List<ProductDto> GetDataNewProduct() {
		// TODO Auto-generated method stub
		return productDao.GetDataNewProduct();
	}

	
	 @Override 
	 public List<ProductDto> GetDataHighlightProduct() { 
		 return productDao.GetDataHighlightProduct(); 
	 }
	 
}
