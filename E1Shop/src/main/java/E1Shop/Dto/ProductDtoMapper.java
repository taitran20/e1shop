package E1Shop.Dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ProductDtoMapper implements RowMapper<ProductDto>{

	@Override
	public ProductDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		// TODO Auto-generated method stub
		ProductDto p = new ProductDto();
		p.setProduct_id(rs.getLong("product_id"));
		p.setCategory_id(rs.getInt("category_id"));
		p.setName(rs.getString("name"));
		p.setPrice(rs.getDouble("price"));
		p.setSale(rs.getInt("sale"));
		p.setHighlight(rs.getBoolean("highlight"));
		p.setNew_product(rs.getBoolean("new_product"));
		p.setDescription(rs.getString("description"));
		p.setMemory_id(rs.getLong("memory_id"));
		p.setMemory_name(rs.getString("memory_name"));
		p.setColor_id(rs.getLong("color_id"));
		p.setColor_code(rs.getString("color_code"));
		p.setColor_name(rs.getString("color_name"));
		p.setImg(rs.getString("img"));
		p.setCreated_at(rs.getDate("created_at"));
		p.setModified_at(rs.getDate("modified_at"));
		p.setSlug(rs.getString("slug"));
		p.setImages(rs.getString("images"));
		return p;
	}

}
