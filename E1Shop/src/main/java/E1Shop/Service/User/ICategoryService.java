package E1Shop.Service.User;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import E1Shop.Dto.ProductDto;

@Service
public interface ICategoryService {
	@Autowired
	public List<ProductDto> GetDataProductByCategoryId(int id);
	@Autowired
	public List<ProductDto> GetDataProductPaginates(int id,int start, int totalPage);
	
	
}
