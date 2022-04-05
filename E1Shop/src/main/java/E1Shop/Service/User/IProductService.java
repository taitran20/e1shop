package E1Shop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import E1Shop.Dto.ProductDto;

@Service
public interface IProductService {
	@Autowired
	public ProductDto GetProductById(long id);
	
	@Autowired
	public List<ProductDto> GetProductByCategoryId(int id);
}
