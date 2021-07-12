package com.ezv.Controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Vector;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezv.Dao.MovieDAO;
import com.ezv.Dto.MovieVO;
import com.ezv.Dto.ReviewVO;

import net.sf.json.JSONArray;
import net.sf.json.JSONObject;

/**
 * Servlet implementation class revInsert
 */
@WebServlet("/insert.do")
public class revInsert extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public revInsert() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		String id=request.getParameter("id");
		int mno=Integer.parseInt(request.getParameter("mno"));
		String rcontent=request.getParameter("rev_content");
		
		ReviewVO rvo=new ReviewVO();
		rvo.setRid(id);
		rvo.setRno(mno);
		rvo.setRcontent(rcontent);
		
		MovieDAO m = new MovieDAO();
		int result = m.InsertMovieReview(rvo);
		
		PrintWriter out = response.getWriter();
		
		MovieVO v = m.Movie(mno);
		request.setAttribute("info", v);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("EZV/movie_detail_harry.jsp");
		dispatcher.forward(request, response);
		
	}

}
