package pojo;

public class User {
	private int no;
	private String id;
	private String name;

	public User() {
		
	}
	
	public User(int num, String id, String name) {
		this.no = num;
		this.id = id;
		this.name = name;
	}

	public int getNum() {
		return no;
	}

	public void setNum(int num) {
		this.no = num;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}
	
	@Override
	public String toString() {
		return super.toString();
	}
	
}
