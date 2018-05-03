package kr.co.gdu;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;

public class A_idcheck extends HttpServlet {


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		DBCon con = new DBCon();
		SqlSessionFactory sqlSessionFactory = con.getCon();
		SqlSession session = sqlSessionFactory.openSession(true);
		
		request.setCharacterEncoding("UTF-8");	
		
		List<HashMap<String, Object>> data = session.selectList("login.id");
		
		request.setAttribute("data", data);

		RequestDispatcher dis = request.getRequestDispatcher("a_idcheck.jsp");
		dis.forward(request, response);
	}
	}

