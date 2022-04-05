package E1Shop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import E1Shop.Dao.ProductDao;
import E1Shop.Dto.ProductDto;
@Service
public class ProductServiceImpl implements IProductService{
	@Autowired
	private ProductDao productDao = new ProductDao();
	
	@Override
	public ProductDto GetProductById(long id) {
		// TODO Auto-generated method stub
		List<ProductDto> list = productDao.GetProductById(id);
		return list.get(0);
	}

	@Override
	public List<ProductDto> GetProductByCategoryId(int id) {
		// TODO Auto-generated method stub
		return productDao.GetDataProductByCategoryId(id);
	}

}
