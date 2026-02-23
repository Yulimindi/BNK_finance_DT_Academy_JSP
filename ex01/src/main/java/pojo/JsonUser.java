package pojo;

public class JsonUser {
	private String name1;
	private String num1;
	
	
	
	public String getName1() {
		return name1;
	}



	public void setName1(String name1) {
		this.name1 = name1;
	}



	public String getNum1() {
		return num1;
	}



	public void setNum1(String num1) {
		this.num1 = num1;
	}



	@Override
	public String toString() {
		return "이름: " + name1 + " 번호 : " + num1;
	}
}
