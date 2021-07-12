package com.ezv.Controller;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezv.Dao.MovieDAO;
import com.ezv.Dto.MovieVO;
import com.ezv.Dto.ReviewVO;

/**
 * Servlet implementation class movieCont
 */
@WebServlet("/movieCont.do")
public class movieCont extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public movieCont() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// response.getWriter().append("Served at: ").append(request.getContextPath());
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		int mno=Integer.parseInt(request.getParameter("mno"));
		MovieDAO m = new MovieDAO();
		
		PrintWriter out = response.getWriter();
		
		MovieVO v = m.Movie(mno);
		request.setAttribute("info", v);
		
		RequestDispatcher dispatcher=request.getRequestDispatcher("movie/movie_detail_harry.jsp");
		dispatcher.forward(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		// doGet(request, response);
		
				
	}

}
