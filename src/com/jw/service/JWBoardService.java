package com.jw.service;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.jw.BoardDAO.JWBoardDAO;
import com.jw.BoardDTO.JWBoardDTO;
import com.lol.comm.DBConn;

public class JWBoardService {
	private static JWBoardService service = new JWBoardService();
	private JWBoardService() {}
	static public JWBoardService getBoardService() {
		return service;
	}
	
	public List<JWBoardDTO> List() {
		DBConn DBC = DBConn.getDB();
		JWBoardDAO dao = JWBoardDAO.getBoardDAO();
		Connection conn = DBC.getConn();
		List<JWBoardDTO> list = new ArrayList<>();
		try {
			list = dao.List(conn);
		}catch(SQLException e) {
			System.out.println(e);
		}finally {
			if(conn!=null) try {conn.close();} catch(SQLException e) {} 
		}
		return list;
	}
	
	public void Insert(JWBoardDTO dto) {
		DBConn DBC = DBConn.getDB();
		JWBoardDAO dao = JWBoardDAO.getBoardDAO();
		Connection conn = DBC.getConn();
		try {
			conn=DBC.getConn();
			conn.setAutoCommit(false);
			dao.Insert(conn, dto);
			conn.commit();
		}catch(SQLException e) {
			System.out.println(e);
			try{conn.rollback();} catch(SQLException rollback) {System.out.println(rollback);}
		}finally {
			if(conn!=null) try {conn.close();} catch(SQLException e) {}
		}
	}
}
