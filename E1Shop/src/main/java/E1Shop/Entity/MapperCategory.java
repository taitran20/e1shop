package E1Shop.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperCategory implements RowMapper<Category>{

	@Override
	public Category mapRow(ResultSet rs, int rowNum) throws SQLException {
		Category c = new Category();
		c.setId(rs.getInt("id"));
		c.setName(rs.getString("name"));
		c.setDescription(rs.getString("description"));
		c.setSlug(rs.getString("slug"));
		c.setStatus(rs.getInt("status"));
		c.setCreated_at(rs.getDate("created_at"));
		c.setModified_at(rs.getDate("modified_at"));
		return c;
	}

}
