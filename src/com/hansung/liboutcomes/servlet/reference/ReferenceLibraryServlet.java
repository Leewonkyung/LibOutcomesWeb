package com.hansung.liboutcomes.servlet.reference;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.hansung.liboutcomes.dao.SampleDAO;
import com.hansung.liboutcomes.vo.SampleVO;

/*
 * 도서관 DB 서블릿
 */
@WebServlet("/ReferenceLibrary")
public class ReferenceLibraryServlet extends HttpServlet {
	
	private static final long serialVersionUID = 1L;
	
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
			
	}
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp)
			throws ServletException, IOException {
		/*
		ArrayList<SampleVO> list = new ArrayList<SampleVO>();
		ArrayList<Integer> intlist = new ArrayList<Integer>(); 
		SampleDAO sampledao = new SampleDAO();
	    SampleVO samplevo = new SampleVO();
	    PrintWriter out = resp.getWriter();
	    
	    List<SampleVO> vo = sampledao.getProgramUserClassifyList("BR0000529");
	    
	    for(int i=0;i<vo.size();i++){
	    	double temp = Double.parseDouble(vo.get(i).getCLASS_NO());
	    	intlist.add((int)temp/100);
	    }
	    
	    for(int i=0;i<vo.size();i++){
	    	out.println(intlist.get(i));
	    }*/
		
		RequestDispatcher dispatcher = req.getRequestDispatcher("/WEB-INF/views/reference/ReferenceLibrary.jsp");
		dispatcher.forward(req, resp);
	}

}