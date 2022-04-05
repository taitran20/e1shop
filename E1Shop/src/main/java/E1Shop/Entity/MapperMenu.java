package E1Shop.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperMenu implements RowMapper<Menu>{

	@Override
	public Menu mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Menu m = new Menu();
		m.setId(rs.getInt("id"));
		m.setName(rs.getString("name"));
		m.setUrl(rs.getString("url"));
		return m;
	}

}

