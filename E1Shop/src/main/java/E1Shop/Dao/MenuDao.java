package E1Shop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import E1Shop.Entity.MapperMenu;
import E1Shop.Entity.Menu;

@Repository
public class MenuDao extends BaseDao{
	
	public List<Menu> GetDataMenu(){
		List<Menu> list = new ArrayList<Menu>();
		String sql = "SELECT * FROM menu";
		list = _jdbcTemplate.query(sql, new MapperMenu());
		return list;
	}
}
