package pojo;

public class Moon {
	String ADDRESS1;
	String ADMIN_NAME;
	String CONTENT;
	String DOJIJUNG_NO;
	String JIJUNG_DATE;
	String MYONGCHING;
	String MYONGCHING_HANMUN;
	String MYONJUK;
	String SIDAE;
	String SOYOUJA_NAME;
	String UTMK_X;
	String UTMK_Y;
	String fileurl1;
	String fileurl2;
	String fileurl3;
	
	
	@Override
	public String toString() {
		return "Moon [ADDRESS1=" + ADDRESS1 + ", ADMIN_NAME=" + ADMIN_NAME + ", CONTENT=" + CONTENT + ", DOJIJUNG_NO="
				+ DOJIJUNG_NO + ", JIJUNG_DATE=" + JIJUNG_DATE + ", MYONGCHING=" + MYONGCHING + ", MYONGCHING_HANMUN="
				+ MYONGCHING_HANMUN + ", MYONJUK=" + MYONJUK + ", SIDAE=" + SIDAE + ", SOYOUJA_NAME=" + SOYOUJA_NAME
				+ ", UTMK_X=" + UTMK_X + ", UTMK_Y=" + UTMK_Y + ", fileurl1=" + fileurl1 + ", fileurl2=" + fileurl2
				+ ", fileurl3=" + fileurl3 + "]";
	}

	public Moon() {
		// TODO Auto-generated constructor stub
	}
	
	public Moon(String DOJIJUNG_NO, String MYONGCHING, String MYONGCHING_HANMUN, String CONTENT, String SIDAE, String JIJUNG_DATE, String ADDRESS1, String Fileurl1, String Fileurl2, String Fileurl3) {
		this.DOJIJUNG_NO = DOJIJUNG_NO;
		this.MYONGCHING = MYONGCHING;
		this.MYONGCHING_HANMUN = MYONGCHING_HANMUN;
		this.CONTENT = CONTENT;
		this.SIDAE = SIDAE;
		this.JIJUNG_DATE = JIJUNG_DATE;
		this.ADDRESS1 = ADDRESS1;
		this.fileurl1 = Fileurl1;
		this.fileurl2 = Fileurl2;
		this.fileurl3 = Fileurl3;
	}
	
	public Moon(String aDDRESS1, String aDMIN_NAME, String cONTENT, String dOJIJUNG_NO, String jIJUNG_DATE,
			String mYONGCHING, String mYONGCHING_HANMUN, String mYONJUK, String sIDAE, String sOYOUJA_NAME,
			String uTMK_X, String uTMK_Y, String fileurl1, String fileurl2, String fileurl3) {
		ADDRESS1 = aDDRESS1;
		ADMIN_NAME = aDMIN_NAME;
		CONTENT = cONTENT;
		DOJIJUNG_NO = dOJIJUNG_NO;
		JIJUNG_DATE = jIJUNG_DATE;
		MYONGCHING = mYONGCHING;
		MYONGCHING_HANMUN = mYONGCHING_HANMUN;
		MYONJUK = mYONJUK;
		SIDAE = sIDAE;
		SOYOUJA_NAME = sOYOUJA_NAME;
		UTMK_X = uTMK_X;
		UTMK_Y = uTMK_Y;
		this.fileurl1 = fileurl1;
		this.fileurl2 = fileurl2;
		this.fileurl3 = fileurl3;
	}
	
	public String getADDRESS1() {
		return ADDRESS1;
	}
	public void setADDRESS1(String aDDRESS1) {
		ADDRESS1 = aDDRESS1;
	}
	public String getADMIN_NAME() {
		return ADMIN_NAME;
	}
	public void setADMIN_NAME(String aDMIN_NAME) {
		ADMIN_NAME = aDMIN_NAME;
	}
	public String getCONTENT() {
		return CONTENT;
	}
	public void setCONTENT(String cONTENT) {
		CONTENT = cONTENT;
	}
	public String getDOJIJUNG_NO() {
		return DOJIJUNG_NO;
	}
	public void setDOJIJUNG_NO(String dOJIJUNG_NO) {
		DOJIJUNG_NO = dOJIJUNG_NO;
	}
	public String getJIJUNG_DATE() {
		return JIJUNG_DATE;
	}
	public void setJIJUNG_DATE(String jIJUNG_DATE) {
		JIJUNG_DATE = jIJUNG_DATE;
	}
	public String getMYONGCHING() {
		return MYONGCHING;
	}
	public void setMYONGCHING(String mYONGCHING) {
		MYONGCHING = mYONGCHING;
	}
	public String getMYONGCHING_HANMUN() {
		return MYONGCHING_HANMUN;
	}
	public void setMYONGCHING_HANMUN(String mYONGCHING_HANMUN) {
		MYONGCHING_HANMUN = mYONGCHING_HANMUN;
	}
	public String getMYONJUK() {
		return MYONJUK;
	}
	public void setMYONJUK(String mYONJUK) {
		MYONJUK = mYONJUK;
	}
	public String getSIDAE() {
		return SIDAE;
	}
	public void setSIDAE(String sIDAE) {
		SIDAE = sIDAE;
	}
	public String getSOYOUJA_NAME() {
		return SOYOUJA_NAME;
	}
	public void setSOYOUJA_NAME(String sOYOUJA_NAME) {
		SOYOUJA_NAME = sOYOUJA_NAME;
	}
	public String getUTMK_X() {
		return UTMK_X;
	}
	public void setUTMK_X(String uTMK_X) {
		UTMK_X = uTMK_X;
	}
	public String getUTMK_Y() {
		return UTMK_Y;
	}
	public void setUTMK_Y(String uTMK_Y) {
		UTMK_Y = uTMK_Y;
	}
	public String getFileurl1() {
		return fileurl1;
	}
	public void setFileurl1(String fileurl1) {
		this.fileurl1 = fileurl1;
	}
	public String getFileurl2() {
		return fileurl2;
	}
	public void setFileurl2(String fileurl2) {
		this.fileurl2 = fileurl2;
	}
	public String getFileurl3() {
		return fileurl3;
	}
	public void setFileurl3(String fileurl3) {
		this.fileurl3 = fileurl3;
	}
	

	}
