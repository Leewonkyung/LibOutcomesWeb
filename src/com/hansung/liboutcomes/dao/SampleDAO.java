package com.hansung.liboutcomes.dao;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import com.hansung.liboutcomes.DBconn;
import com.hansung.liboutcomes.RowMapper;
import com.hansung.liboutcomes.vo.SampleVO;

/*
 * DAO 사용 방법을 위한 Sample 파일
 * 
 * DAO(Data Access Object)란 데이터 접근을 목적으로하는 객체
 */
public class SampleDAO {
	public boolean insertSample(SampleVO sampleVO) { // 리턴 타입 boolean (성공/실패)
	      // 필요한 SQL문 작성
		String sql = "INSERT INTO liboutcomes.testdata1"
	               + "(Transfer_User_Key, LOAN_TYPE_CODE, RETURN_TYPE_CODE, LOAN_DATE, RETURN_PLAN_DATE, CLASS_NO, MANAGE_CODE, REG_CODE, REG_NO, TITLE, USER_CLASS_CODE, USER_POSITION_CODE, L_DEVICE, R_DEVICE)"
	               + "VALUES(?,?,?,?,?,?,?,?,?,?,?,?,?,?)";
	         // DBconn 클래스에서 해당 쿼리에 알맞는 함수 호출 (Insert는 executeUpdate() 함수)
	         // 인자 값으로 sql문, 쿼리에 필요한 파라미터 순으로 추가
	         // 파라미터가 필요없는 경우 작성하지 않으면 됨
	         return new DBconn().executeUpdate(sql 
	               , sampleVO.getTransfer_User_key()
	               , sampleVO.getLOAN_TYPE_CODE()
	               , sampleVO.getRETURN_TYPE_CODE()
	               , sampleVO.getLOAN_DATE()
	               , sampleVO.getRETURN_PLAN_DATE()
	               , sampleVO.getCLASS_NO()
	               , sampleVO.getMANAGE_CODE()
	               , sampleVO.getREG_CODE()
	               , sampleVO.getREG_NO()
	               , sampleVO.getTITLE()
	               , sampleVO.getUSER_CLASS_CODE()
	               , sampleVO.getUSER_POSITION_CODE()
	               , sampleVO.getL_DEVICE()
	               , sampleVO.getR_DEVICE());
	}
	
	public List<SampleVO> getDeviceList() { // 리턴 타입 List
		// RowMapper 인스턴스 생성
		// RowMapper<T>의 리턴타입 T에는 리턴할 VO 클래스명을 작성
		RowMapper<SampleVO> rm = new RowMapper<SampleVO>() {
			@Override
			public SampleVO mapRow(ResultSet rs) throws SQLException {
				// mapRow() 함수에서는 DB 쿼리를 통해 가져온 값을 이용해 VO 인스턴스 생성
				return new SampleVO(
						rs.getString("L_DEVICE"),
						rs.getString("R_DEVICE"));
			}
		};
		// 필요한 SQL문 작성
		String sql = "select L_DEVICE,R_DEVICE from testdata;";
		// DBconn 클래스에서 해당 쿼리에 알맞는 함수 호출 (Select List는 executeList() 함수)
		// 인자 값으로 sql문, RowMapper 인스턴스, 쿼리에 필요한 파라미터 순으로 추가
		// 파라미터가 필요없는 경우 작성하지 않으면 됨
		return new DBconn().executeList(sql, rm);
	}
	
	public List<SampleVO> getProgramUserClassifyList(String Transfer_user_key) { // 프로그램에 참여한 유저들의 분류기호만을 가져오는 리스트
		// RowMapper 인스턴스 생성
		// RowMapper<T>의 리턴타입 T에는 리턴할 VO 클래스명을 작성
		RowMapper<SampleVO> rm = new RowMapper<SampleVO>() {
			@Override
			public SampleVO mapRow(ResultSet rs) throws SQLException {
				// mapRow() 함수에서는 DB 쿼리를 통해 가져온 값을 이용해 VO 인스턴스 생성
				return new SampleVO(
						rs.getString("CLASS_NO"));
			}
		};
		// 필요한 SQL문 작성
		String sql = "select CLASS_NO from testdata1 where Transfer_User_Key='"+Transfer_user_key+"';";
		// DBconn 클래스에서 해당 쿼리에 알맞는 함수 호출 (Select List는 executeList() 함수)
		// 인자 값으로 sql문, RowMapper 인스턴스, 쿼리에 필요한 파라미터 순으로 추가
		// 파라미터가 필요없는 경우 작성하지 않으면 됨
		return new DBconn().executeList(sql, rm);
	}
	
	public boolean insertData(String fileURL) { // 리턴 타입 boolean (성공/실패)
		// 필요한 SQL문 작성
		String sql = "LOAD DATA INFILE '" + fileURL + "' INTO TABLE testdata FIELDS TERMINATED BY ','";
		// DBconn 클래스에서 해당 쿼리에 알맞는 함수 호출 (Insert는 executeUpdate() 함수)
		// 인자 값으로 sql문, 쿼리에 필요한 파라미터 순으로 추가
		// 파라미터가 필요없는 경우 작성하지 않으면 됨
		return new DBconn().executeUpdate(sql);
	}
	
	public boolean deleteSample(int num) { // 리턴 타입 boolean (성공/실패)
		// 필요한 SQL문 작성
		String sql = "DELETE FROM sampleTable WHERE sampleNum=?";
		// DBconn 클래스에서 해당 쿼리에 알맞는 함수 호출 (Delete는 executeUpdate() 함수)
		// 인자 값으로 sql문, 쿼리에 필요한 파라미터 순으로 추가
		// 파라미터가 필요없는 경우 작성하지 않으면 됨
		return new DBconn().executeUpdate(sql, num);
	}
}
