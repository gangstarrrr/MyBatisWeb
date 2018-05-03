package kr.co.gdu;

import java.io.IOException;
import java.util.HashMap;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class A_info extends HttpServlet {

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DBCon con = new DBCon();
		SqlSessionFactory sqlSessionFactory = con.getCon();
		SqlSession session = sqlSessionFactory.openSession(true);
		
		request.setCharacterEncoding("UTF-8");
		String ID = request.getParameter("ID");
		String PW = request.getParameter("PW");
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("ID", ID);
		map.put("PW", PW);
		System.out.println(map);
		
		HashMap<String, Object> data 
			= session.selectOne("login.selectOne", map);
		
		System.out.println(data);
		
		request.setAttribute("data", data);
		RequestDispatcher dis = request.getRequestDispatcher("a_info.jsp");
		dis.forward(request, response);
	}



}
