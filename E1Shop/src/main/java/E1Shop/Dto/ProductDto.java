package E1Shop.Dto;

import java.sql.Date;

public class ProductDto {
	private long   product_id;
	private  String  name;
	private  String   images;
	private  double  price;
	private  String  description;
	private  int  sale;
	private  boolean  highlight;
	private  boolean new_product;
	private  int category_id;
	private  String  slug;
	private  long  memory_id;
	private  String  memory_name ;
	private  long  color_id;
	private  String         color_name ;
    private  String color_code ;
    private  String        img;
    private  Date       created_at;
    private  Date     modified_at;
	public long getProduct_id() {
		return product_id;
	}
	public void setProduct_id(long product_id) {
		this.product_id = product_id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getImages() {
		return images;
	}
	public void setImages(String images) {
		this.images = images;
	}
	public double getPrice() {
		return price;
	}
	public void setPrice(double price) {
		this.price = price;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public int getSale() {
		return sale;
	}
	public void setSale(int sale) {
		this.sale = sale;
	}
	public boolean isHighlight() {
		return highlight;
	}
	public void setHighlight(boolean highlight) {
		this.highlight = highlight;
	}
	public boolean isNew_product() {
		return new_product;
	}
	public void setNew_product(boolean new_product) {
		this.new_product = new_product;
	}
	public int getCategory_id() {
		return category_id;
	}
	public void setCategory_id(int category_id) {
		this.category_id = category_id;
	}
	public String getSlug() {
		return slug;
	}
	public void setSlug(String slug) {
		this.slug = slug;
	}
	public long getColor_id() {
		return color_id;
	}
	public void setColor_id(long color_id) {
		this.color_id = color_id;
	}
	public String getColor_name() {
		return color_name;
	}
	public void setColor_name(String color_name) {
		this.color_name = color_name;
	}
	public String getColor_code() {
		return color_code;
	}
	public void setColor_code(String color_code) {
		this.color_code = color_code;
	}
	public String getImg() {
		return img;
	}
	public void setImg(String img) {
		this.img = img;
	}
	public Date getCreated_at() {
		return created_at;
	}
	public void setCreated_at(Date created_at) {
		this.created_at = created_at;
	}
	public Date getModified_at() {
		return modified_at;
	}
	public void setModified_at(Date modified_at) {
		this.modified_at = modified_at;
	}
	public ProductDto() {
		super();
	}
	public long getMemory_id() {
		return memory_id;
	}
	public void setMemory_id(long memory_id) {
		this.memory_id = memory_id;
	}
	public String getMemory_name() {
		return memory_name;
	}
	public void setMemory_name(String memory_name) {
		this.memory_name = memory_name;
	}
    
    
    
}