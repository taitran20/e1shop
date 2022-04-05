package E1Shop.Dto;

public class CartDto {

	private int quantity;
	private double total;
	private ProductDto product;
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public double getTotal() {
		return total;
	}
	public void setTotal(double total) {
		this.total = total;
	}
	public ProductDto getProduct() {
		return product;
	}
	public void setProduct(ProductDto product) {
		this.product = product;
	}
	public CartDto(int quantity, double total, ProductDto product) {
		super();
		this.quantity = quantity;
		this.total = total;
		this.product = product;
	}
	public CartDto() {
		super();
	}
	
	
}
