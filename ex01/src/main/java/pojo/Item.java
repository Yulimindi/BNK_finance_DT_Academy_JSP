package pojo;

public class Item {
	String name;
	String price;
	String savePath;
	
	public Item() {
		// TODO Auto-generated constructor stub
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getPrice() {
		return price;
	}
	public void setPrice(String price) {
		this.price = price;
	}
	public String getSavePath() {
		return savePath;
	}
	public void setSavePath(String savePath) {
		this.savePath = savePath;
	}
	@Override
	public String toString() {
		return "Item [name=" + name + ", price=" + price + ", savePath=" + savePath + "]";
	}
	public Item(String name, String price, String savePath) {
		super();
		this.name = name;
		this.price = price;
		this.savePath = savePath;
	}
	
	
}
