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

public class A_update extends HttpServlet {

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		request.setCharacterEncoding("UTF-8");
		String ID = request.getParameter("ID");
		String PW = request.getParameter("PW");
		String 이름 = request.getParameter("이름");
		String 설명= request.getParameter("설명");
		
		HashMap<String, Object> map = new HashMap<String, Object>();
		map.put("ID",ID);
		map.put("PW", PW);
		map.put("이름", 이름);
		map.put("설명", 설명);
		System.out.println(map);
		
		DBCon con = new DBCon();
		SqlSessionFactory sqlSessionFactory = con.getCon();
		SqlSession session = sqlSessionFactory.openSession(true);
		int cnt = session.update("login.selectupdate", map);
		System.out.println(cnt);
		
		if(cnt == 1) {
			HashMap<String, Object> data = session.selectOne("login.selectOne", map);
			request.setAttribute("data", data);
			RequestDispatcher dis = request.getRequestDispatcher("a_info.jsp");
			dis.forward(request, response);
		} else {
			
		}
	}
	}


