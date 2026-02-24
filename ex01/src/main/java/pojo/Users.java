package pojo;

public class Users {
	private int no;
	private String id;
	private String name;
	
	@Override
	public String toString() {
		return "Users [no=" + no + ", id=" + id + ", name=" + name + "]";
	}
	public int getNo() {
		return no;
	}
	public void setNo(int no) {
		this.no = no;
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
	
	
}
