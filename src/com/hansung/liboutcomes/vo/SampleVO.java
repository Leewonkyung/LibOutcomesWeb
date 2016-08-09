package com.hansung.liboutcomes.vo;

/*
 * VO 사용 방법을 위한 Sample 파일
 * 
 * VO(Value Object)란 관계형 데이터베이스의 레코드에 대응되는 자바 클래스
 */
public class SampleVO {
	private String Transfer_User_key;
	private int LOAN_TYPE_CODE;
	private int RETURN_TYPE_CODE;
	private String LOAN_DATE;
	private String RETURN_PLAN_DATE;
	private String CLASS_NO;
	private String MANAGE_CODE;
	private String REG_CODE;
	private String REG_NO;
	private String TITLE;
	private int USER_CLASS_CODE;
	private int USER_POSITION_CODE;
	private String L_DEVICE; //대출처리
	private String R_DEVICE; //반납처리

	public SampleVO() {} // 인자 없는 생성자

	public SampleVO(String L_DEVICE, String R_DEVICE) { // 인자 있는 생성자
		this.L_DEVICE = L_DEVICE;
		this.R_DEVICE = R_DEVICE;
	}
	
	public SampleVO(String CLASS_NO){
		this.CLASS_NO = CLASS_NO;
	}

	// Getters & Setters	
	public String getTransfer_User_key() {
		return Transfer_User_key;
	}

	public void setTransfer_User_key(String transfer_User_key) {
		Transfer_User_key = transfer_User_key;
	}

	public int getLOAN_TYPE_CODE() {
		return LOAN_TYPE_CODE;
	}

	public void setLOAN_TYPE_CODE(int lOAN_TYPE_CODE) {
		LOAN_TYPE_CODE = lOAN_TYPE_CODE;
	}

	public int getRETURN_TYPE_CODE() {
		return RETURN_TYPE_CODE;
	}

	public void setRETURN_TYPE_CODE(int rETURN_TYPE_CODE) {
		RETURN_TYPE_CODE = rETURN_TYPE_CODE;
	}

	public String getLOAN_DATE() {
		return LOAN_DATE;
	}

	public void setLOAN_DATE(String lOAN_DATE) {
		LOAN_DATE = lOAN_DATE;
	}

	public String getRETURN_PLAN_DATE() {
		return RETURN_PLAN_DATE;
	}

	public void setRETURN_PLAN_DATE(String rETURN_PLAN_DATE) {
		RETURN_PLAN_DATE = rETURN_PLAN_DATE;
	}

	public String getCLASS_NO() {
		return CLASS_NO;
	}

	public void setCLASS_NO(String cLASS_NO) {
		CLASS_NO = cLASS_NO;
	}

	public String getMANAGE_CODE() {
		return MANAGE_CODE;
	}

	public void setMANAGE_CODE(String mANAGE_CODE) {
		MANAGE_CODE = mANAGE_CODE;
	}

	public String getREG_CODE() {
		return REG_CODE;
	}

	public void setREG_CODE(String rEG_CODE) {
		REG_CODE = rEG_CODE;
	}

	public String getREG_NO() {
		return REG_NO;
	}

	public void setREG_NO(String rEG_NO) {
		REG_NO = rEG_NO;
	}

	public String getTITLE() {
		return TITLE;
	}

	public void setTITLE(String tITLE) {
		TITLE = tITLE;
	}

	public int getUSER_CLASS_CODE() {
		return USER_CLASS_CODE;
	}

	public void setUSER_CLASS_CODE(int uSER_CLASS_CODE) {
		USER_CLASS_CODE = uSER_CLASS_CODE;
	}

	public int getUSER_POSITION_CODE() {
		return USER_POSITION_CODE;
	}

	public void setUSER_POSITION_CODE(int uSER_POSITION_CODE) {
		USER_POSITION_CODE = uSER_POSITION_CODE;
	}

	public String getL_DEVICE() {
		return L_DEVICE;
	}
	
	public void setL_DEVICE(String l_DEVICE) {
		L_DEVICE = l_DEVICE;
	}
	public String getR_DEVICE() {
		return R_DEVICE;
	}
	public void setR_DEVICE(String r_DEVICE) {
		R_DEVICE = r_DEVICE;
	}
}
