package kpu.web.club.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import kpu.web.club.domain.BoardVO;
import kpu.web.club.persistance.BoardDAO;

/**
 * Servlet implementation class BoardServlet
 */
@WebServlet("/BoardServlet")
public class BoardServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
    
	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String cmdReq="";
		cmdReq = request.getParameter("cmd");
		
		if(cmdReq.equals("registerboard")) {
			response.sendRedirect("foodevaluregister.jsp");
	    }
		else if(cmdReq.equals("boardlist")) {
			   BoardDAO dao = new BoardDAO();
			   ArrayList<BoardVO> boardList = dao.getBoardList();
			   request.setAttribute("boardList", boardList);
			   RequestDispatcher view = request.getRequestDispatcher("board_list.jsp");
			   view.forward(request, response);
			}
		else if(cmdReq.equals("update")) {
			BoardDAO dao = new BoardDAO();
			BoardVO board = dao.read(request.getParameter("bid").toString());
			request.setAttribute("board", board);
			RequestDispatcher view = request.getRequestDispatcher("updateboard.jsp");
			view.forward(request, response);
		}
		else if(cmdReq.equals("delete")) {
			BoardDAO dao = new BoardDAO();
			dao.delete(request.getParameter("bid").toString());
			RequestDispatcher view = request.getRequestDispatcher("deletepage.jsp");
			   view.forward(request, response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		request.setCharacterEncoding("UTF-8");
		response.setContentType("text/html; charset=UTF-8");
		
		String cmdReq="";
		String message="";
		cmdReq = request.getParameter("cmd");
		
		if(cmdReq.equals("registerboard")) {
			BoardVO boardVO = new BoardVO();
		
			boardVO.setRestaurantname(request.getParameter("restaurantname"));
			boardVO.setFoodname(request.getParameter("foodname"));
			boardVO.setTitle(request.getParameter("title"));
			boardVO.setContent(request.getParameter("content"));
			boardVO.setTastesatisfy(request.getParameter("tastesatisfy"));
			boardVO.setPricesatisfy(request.getParameter("pricesatisfy"));
			boardVO.setCleansatisfy(request.getParameter("cleansatisfy"));
			
			BoardDAO boardDao = new BoardDAO();
		
			if(boardDao.add(boardVO)) message = "등록되었습니다.";
			else message ="등록 실패입니다.";
			
			request.setAttribute("greetings", message);
			request.setAttribute("board", boardVO);
			RequestDispatcher view = request.getRequestDispatcher("boardresult.jsp");
			view.forward(request, response);
		}
		else if(cmdReq.equals("update")) {
			BoardVO boardVO = new BoardVO();
			
			boardVO.setBId(request.getParameter("bid"));
			boardVO.setRestaurantname(request.getParameter("restaurantname"));
			boardVO.setFoodname(request.getParameter("foodname"));
			boardVO.setTitle(request.getParameter("title"));
			boardVO.setContent(request.getParameter("content"));
			boardVO.setTastesatisfy(request.getParameter("tastesatisfy"));
			boardVO.setPricesatisfy(request.getParameter("pricesatisfy"));
			boardVO.setCleansatisfy(request.getParameter("cleansatisfy"));
			
			BoardDAO dao = new BoardDAO();
			
			if(dao.update(boardVO)) message ="수정이 완료되었습니다.";
			else message ="수정 실패입니다.";
			
			request.setAttribute("greetings", message);
			request.setAttribute("board", boardVO);
			RequestDispatcher view = request.getRequestDispatcher("boardresult.jsp");
			view.forward(request, response);
					
			
		}
	}

}
