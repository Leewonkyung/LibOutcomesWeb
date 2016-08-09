package com.hansung.liboutcomes.servlet;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import com.hansung.liboutcomes.RowMapper;
import com.hansung.liboutcomes.dao.MemberDAO;
import com.hansung.liboutcomes.vo.MemberVO;
import com.hansung.liboutcomes.vo.SampleVO;



/**
 * Servlet implementation class RegisterServlet
 */
@WebServlet("/Register")
public class RegisterServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/Register.jsp");
		dispatcher.forward(req, resp);
	}
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		
		String email = (String) req.getParameter("email");
		String password = (String) req.getParameter("password");
		String name = (String)req.getParameter("name");
		String library = (String)req.getParameter("library");
		
		MemberDAO memberDAO = new MemberDAO();
		ArrayList<MemberVO> list = new ArrayList<MemberVO>();
		MemberVO memberVO = new MemberVO();
		
		//VO 객체 초기화가 안되는 상태
		
		memberVO.setEmail(email);
		memberVO.setPassword(password);
		memberVO.setName(name);
		memberVO.setLibrary(library);
		boolean success = memberDAO.insertMember(memberVO);
		System.out.println(library);
		System.out.println("성공인가요?");
		
		/*		
  		RowMapper<MemberVO> rm = new RowMapper<MemberVO>() {
			@Override
			public MemberVO mapRow(ResultSet rs) throws SQLException {
				MemberVO memberVO = new MemberVO();
				memberVO.setEmail(rs.getString("email"));
				memberVO.setPassword(rs.getString("password"));
				memberVO.setName(rs.getString("name"));
				memberVO.setLibrary(rs.getString("library"));
				return memberVO;
			}		
		};*/
		
		/*로그인 세션
		if (memberVO != null) {
			
			System.out.println("==========[ Register Success ]==========");
			out.println("TRUE");
			
			HttpSession session = req.getSession();
			session.setAttribute("userEmail", memberVO.getEmail());
			session.setAttribute("userName", memberVO.getName());
		} else {
			System.out.println("==========[ Register Fail ]==========");
			out.println("FALSE");
		}*/
		
	}
	
}
