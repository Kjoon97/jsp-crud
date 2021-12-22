package kpu.web.club.persistance;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import kpu.web.club.domain.BoardVO;

public class BoardDAO {
	Connection conn = null;
	PreparedStatement pstmt = null;
	
	String jdbc_driver = "com.mysql.cj.jdbc.Driver";
	String jdbc_url = "jdbc:mysql://localhost/jspdb?allowPublicKeyRetrieval=true&useSSL=false&serverTimezone=UTC";
	
	void connect() {
		try {
			Class.forName(jdbc_driver);
			conn = DriverManager.getConnection(jdbc_url, "jspbook","passwd");
		} catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	void disconnect() {
		if(pstmt != null) {
			try {
				pstmt.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
		if(conn != null) {
			try {
				conn.close();
			} catch(SQLException e) {
				e.printStackTrace();
			}
		}
	}
	public boolean add( BoardVO vo ) {
		connect();
		String sql = "insert into board values (null,?,?,?,?,?,?,?)";
		try {
			pstmt = conn.prepareStatement(sql);   //위에 쿼리문 ?에 데이터를 넣을 수 있게해주는 것.
			pstmt.setString(1, vo.getRestaurantname());
			pstmt.setString(2, vo.getFoodname());
			pstmt.setString(3, vo.getTitle());
			pstmt.setString(4, vo.getContent());
			pstmt.setString(5, vo.getTastesatisfy());
			pstmt.setString(6, vo.getPricesatisfy());
			pstmt.setString(7, vo.getCleansatisfy());
			pstmt.executeUpdate();
		} catch(SQLException e) {
			e.printStackTrace();
			return false;
		} finally {
			disconnect();
		}
		return true;
	}
	public ArrayList<BoardVO> getBoardList() {
		connect();
		ArrayList<BoardVO> boardlist = new ArrayList<BoardVO>();
		String sql = "select * from board";
		try {
			pstmt = conn.prepareStatement(sql);
			ResultSet rs = pstmt.executeQuery();
			while(rs.next()) {
				BoardVO vo = new BoardVO();
				vo.setBId(rs.getString("bid"));
				vo.setRestaurantname(rs.getString("restaurantname"));
				vo.setFoodname(rs.getString("foodname"));
				vo.setTitle(rs.getString("title"));
				vo.setContent(rs.getString("content"));
				vo.setTastesatisfy(rs.getString("tastesatisfy"));
				vo.setPricesatisfy(rs.getString("pricesatisfy"));
				vo.setCleansatisfy(rs.getString("cleansatisfy"));
				boardlist.add(vo);
			}
			rs.close();
		} catch(SQLException e) {
			e.printStackTrace();
		} finally {
			disconnect();
		}
		return boardlist;
	}
	public BoardVO read(String bid) {    //id로 셀렉트해서 나온 행을 board객체에 넣고 리턴. 
		connect();
		BoardVO board = new BoardVO();
		String sql= "select * from board where bid = ?";
	    try {
	    	pstmt = conn.prepareStatement(sql);
	    	pstmt.setString(1,bid);
	    	ResultSet rs = pstmt.executeQuery();
			while (rs.next()) {
				board.setBId(rs.getString("bid"));
				board.setRestaurantname(rs.getString("restaurantname"));
				board.setFoodname(rs.getString("foodname"));
				board.setTitle(rs.getString("title"));
				board.setContent(rs.getString("content"));
				board.setTastesatisfy(rs.getString("tastesatisfy"));
				board.setPricesatisfy(rs.getString("pricesatisfy"));
				board.setCleansatisfy(rs.getString("cleansatisfy"));
			}
	    	rs.close();
	    }catch(SQLException e) {
	    	e.printStackTrace();
	    }finally {
			disconnect();
		}
		return board;
	}
	
	public boolean update(BoardVO boardVO) {
		// TODO Auto-generated method stub
		connect();
		String sql = "update board set restaurantname = ?, foodname = ?, title=?, content = ?, tastesatisfy = ?, pricesatisfy = ?, cleansatisfy =? where bid = ?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, boardVO.getRestaurantname());
			pstmt.setString(2, boardVO.getFoodname());
			pstmt.setString(3, boardVO.getTitle());
			pstmt.setString(4, boardVO.getContent());
			pstmt.setString(5, boardVO.getTastesatisfy());
			pstmt.setString(6, boardVO.getPricesatisfy());
			pstmt.setString(7, boardVO.getCleansatisfy());
			pstmt.setString(8, boardVO.getBid());
			pstmt.executeUpdate();
			}
		catch(SQLException e) {
			e.printStackTrace();
			return false;
		}finally {
			disconnect();
		}
		 return true;
		}
	
	public boolean delete(String bid) {
		connect();
		String sql ="delete from board where bid =?";
		try {
			pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, bid);
			pstmt.executeUpdate();
		}
		catch(SQLException e) {
			e.printStackTrace();
			return false;
		}finally {
			disconnect();
		}
		return true;
	}
}
