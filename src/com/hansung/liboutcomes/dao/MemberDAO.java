package com.hansung.liboutcomes.dao;

import java.sql.ResultSet;
import java.sql.SQLException;

import com.hansung.liboutcomes.DBconn;
import com.hansung.liboutcomes.RowMapper;
import com.hansung.liboutcomes.vo.BoardNormalVO;
import com.hansung.liboutcomes.vo.MemberVO;
import com.hansung.liboutcomes.vo.SampleVO;

public class MemberDAO {

	/*
	 * 로그인 체크
	 */
	public MemberVO loginCheck(String email, String password) {
		RowMapper<MemberVO> rm = new RowMapper<MemberVO>() {
			@Override
			public MemberVO mapRow(ResultSet rs) throws SQLException {
				MemberVO memberVO = new MemberVO();
				memberVO.setEmail(rs.getString("email"));
				memberVO.setName(rs.getString("name"));
				return memberVO;
			}
		};
		String sql = "SELECT email, name FROM member WHERE email=? AND password=?";
		return new DBconn().executeQuery(sql, rm, email, password);
	}
	
	public boolean insertMember(MemberVO memberVO) { // 리턴 타입 boolean (성공/실패)
		      // 필요한 SQL문 작성
			String sql = "INSERT INTO liboutcomes.member"
		               + "(email, password, name,library)"
		               + "VALUES(?,?,?,?)";
			
		         // DBconn 클래스에서 해당 쿼리에 알맞는 함수 호출 (Insert는 executeUpdate() 함수)
		         // 인자 값으로 sql문, 쿼리에 필요한 파라미터 순으로 추가
		         // 파라미터가 필요없는 경우 작성하지 않으면 됨
		         return new DBconn().executeUpdate(sql 
		               , memberVO.getEmail()
		               , memberVO.getPassword()
		               , memberVO.getName()
		               , memberVO.getLibrary());
		}
	public boolean updateMember(MemberVO memberVO) {
		String sql = "UPDATE member SET email=?, password=?, name=?, library=? WHERE email=?";
		return new DBconn().executeUpdate(sql 
				, memberVO.getEmail()
				, memberVO.getPassword()
				, memberVO.getName()
				, memberVO.getLibrary());
	}
	
	
	}