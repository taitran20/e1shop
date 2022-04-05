package E1Shop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import E1Shop.Dao.ProductDao;
import E1Shop.Dto.ProductDto;

@Service
public class CategoryServiceImpl implements ICategoryService{
	@Autowired
	private ProductDao productDao;

	@Override
	public List<ProductDto> GetDataProductPaginates(int id,int start, int totalPage) {
		// TODO Auto-generated method stub
		List<ProductDto> list = productDao.GetDataProductPaginates(id , start, totalPage);
		return list;
	}

	@Override
	public List<ProductDto> GetDataProductByCategoryId(int id) {
		// TODO Auto-generated method stub
		return productDao.GetDataProductByCategoryId(id);
	}


}
