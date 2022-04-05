package E1Shop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import E1Shop.Entity.Category;
import E1Shop.Entity.MapperCategory;

@Repository
public class CategoryDao extends BaseDao{
	
	public List<Category> GetDataCategory(){
		List<Category> list = new ArrayList<Category>();
		String sql = "SELECT * FROM category";
		list = _jdbcTemplate.query(sql, new MapperCategory());
		return list;
	}
}
