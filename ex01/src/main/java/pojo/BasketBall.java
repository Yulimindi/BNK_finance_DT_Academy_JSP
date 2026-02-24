package pojo;

public class BasketBall {
	String name;
	String num;
	int age;
	int height;
	String gender;
	
	public BasketBall(String name, String num, int age, int height, String gender) {
		this.name = name;
		this.num = num;
		this.age = age;
		this.height = height;
		this.gender = gender;
	}
	
	public BasketBall(String name, String num) {
		this.name = name;
		this.num = num;
	}
	
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}
	public int getHeight() {
		return height;
	}
	public void setHeight(int height) {
		this.height = height;
	}
	public String getGender() {
		return gender;
	}
	public void setGender(String gender) {
		this.gender = gender;
	}

	@Override
	public String toString() {
		return "BasketBall [name=" + name + ", num=" + num + ", age=" + age + ", height=" + height + ", gender="
				+ gender + "]";
	}
	
	
}
