package E1Shop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import E1Shop.Dto.ProductDto;
import E1Shop.Dto.ProductDtoMapper;

@Repository

public class ProductDao extends BaseDao{
	
	private final boolean YES = true;
	private final boolean NO = false;
	
	private StringBuffer SqlString() {
		StringBuffer  sql = new StringBuffer();
		sql.append("SELECT ");
		sql.append("p.id AS product_id, ");
		sql.append("p.name, ");
		sql.append("p.images, ");
		sql.append("p.price, ");
		sql.append("p.description, ");
		sql.append("p.sale, ");
		sql.append("p.highlight, ");
		sql.append("p.new_product, ");
		sql.append("p.category_id, ");
		sql.append("p.slug, ");
		sql.append("m.id AS memory_id, ");
		sql.append("m.name AS memory_name, ");
		sql.append("c.id AS color_id, ");
		sql.append("c.name AS color_name, ");
		sql.append("c.code AS color_code, ");
		sql.append("c.img, ");
		sql.append("p.created_at, ");
		sql.append("p.modified_at ");
		sql.append("FROM ");
		sql.append("product AS p ");
		sql.append("INNER JOIN ");
		sql.append("color AS c ");
		sql.append("INNER JOIN ");
		sql.append("memory AS m ");
		sql.append("ON p.id = c.product_id = m.product_id ");
		return sql;
	}
	
	private String SqlProduct(boolean newproduct, boolean highlight) {
		StringBuffer sql =  SqlString();
		sql.append("WHERE 1=1 ");
		if(newproduct) {
			sql.append(" AND p.new_product = true ");
		}
		if(highlight) {
			sql.append(" AND p.highlight = true ");
		}		
		sql.append("GROUP BY p.id, c.product_id, m.product_id ");
		sql.append("ORDER BY product_id DESC ");
		sql.append("LIMIT 8;");
		return sql.toString();
	}
	
	private StringBuffer SqlProductByCategoryId(int id) {
		StringBuffer sql =  SqlString();
		if(id==0) {
			sql.append("WHERE 1=1 ");
			sql.append(" GROUP BY p.id, c.product_id, m.product_id");
		}
		else{
			sql.append("WHERE 1=1 ");
			sql.append("AND p.category_id= "+id );
			sql.append(" GROUP BY p.id, c.product_id, m.product_id");
		}
		
		return sql;
	}
	
	private String SqlProductPaginates(int id,int start, int totalPage) {
		StringBuffer sql =  SqlProductByCategoryId(id);
		//sql.append("SELECT p.id AS product_id, p.name, p.images, p.price, p.description, p.sale, p.highlight, p.new_product, p.category_id, p.slug, m.id AS memory_id, m.name AS memory_name, c.id AS color_id, c.name AS color_name, c.code AS color_code, c.img, p.created_at, p.modified_at FROM product AS p INNER JOIN color AS c INNER JOIN memory AS m ON p.id = c.product_id = m.product_id GROUP BY p.id, c.product_id, m.product_id ");
		sql.append(" LIMIT " + (start-1) + ", "+ totalPage);
		//sql.append(" LIMIT 0,13");
		return sql.toString();
	}
	
	private String SqlProductById(long id) {
		StringBuffer sql =  SqlString();
		
		sql.append("WHERE 1=1 ");
		sql.append("AND p.id= "+id );
		sql.append(" GROUP BY p.id, c.product_id, m.product_id ");
		
		return sql.toString();
	}
	

	
	 public List<ProductDto> GetDataHighlightProduct(){ String sql =
	  SqlProduct(NO, YES); List<ProductDto> listhlproduct =
	  _jdbcTemplate.query(sql, new ProductDtoMapper()); return listhlproduct; }
	 
	public List<ProductDto> GetDataNewProduct(){
		String sql = SqlProduct(YES, NO);
		List<ProductDto> listnewproduct = _jdbcTemplate.query(sql, new ProductDtoMapper());
		return listnewproduct;
	}
	
	public List<ProductDto> GetDataProductByCategoryId(int id){
		String sql = SqlProductByCategoryId(id).toString();
		List<ProductDto> listproduct = _jdbcTemplate.query(sql, new ProductDtoMapper());
		return listproduct;
	}
	
	public List<ProductDto> GetDataProductPaginates(int id,int start, int totalPage){
		StringBuffer sqlGetDataById = SqlProductByCategoryId(id);
		List<ProductDto> listproductbyid = _jdbcTemplate.query(sqlGetDataById.toString(), new ProductDtoMapper());
		List<ProductDto> listproduct = new ArrayList<ProductDto>();
		if(listproductbyid.size()>0) {
			String sql = SqlProductPaginates(id,start,totalPage);
			listproduct = _jdbcTemplate.query(sql, new ProductDtoMapper());
		}
		return listproduct;
	}

	public List<ProductDto> GetProductById(long id) {
		// TODO Auto-generated method stub
		String sql = SqlProductById(id);
		List<ProductDto> listproduct = _jdbcTemplate.query(sql, new ProductDtoMapper());
		return listproduct;
	}
	
	public ProductDto FindProductById(long id) {
		// TODO Auto-generated method stub
		String sql = SqlProductById(id);
		ProductDto product = _jdbcTemplate.queryForObject(sql, new ProductDtoMapper());
		return product;
	}
	

}
