package domain;

public class Student {
	String name;
	int num;
	int eScore; // 영어 점수
	int mScore; // 수학 점수
	
	public Student(String name, int num, int eScore, int mScore) {
		this.name = name;
		this.num = num;
		this.eScore = eScore;
		this.mScore = mScore;
	}
	
	
	public String getName() {
		return name;
	}
	
	public int getNum() {
		return num;
	}
	
	public int getEscore() {
		return eScore;
	}
	
	public int getMscore() {
		return mScore;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public void setNum(int num) {
		this.num = num;
	}
	
	public void setEscore(int eScore) {
		this.eScore = eScore;
	}
	
	public void setMscore(int mScore) {
		this.mScore = mScore;
	}
	
	
}
