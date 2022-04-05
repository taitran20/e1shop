package E1Shop.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperSlides implements RowMapper<Slides>{

	@Override
	public Slides mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		Slides s = new Slides();
		s.setId(rs.getInt("id"));
		s.setImg(rs.getString("img"));
		s.setName(rs.getString("name"));
		s.setCaption(rs.getString("caption"));
		s.setContent(rs.getString("content"));
		return s;
	}

}
