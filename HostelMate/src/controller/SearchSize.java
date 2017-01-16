package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ResidentDao;

@WebServlet("/controller.SearchSize")
public class SearchSize extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String search = req.getParameter("search");
		if(search.equals("")){
			System.out.println("servlet called size=0");
			resp.getWriter().write("0");
			return; 
		}
		List list = ResidentDao.getResidents(search);
		Iterator i = list.iterator();
		int size = list.size();
		
		resp.setContentType("text/html");
		resp.setCharacterEncoding("UTF-8");
		PrintWriter pw = resp.getWriter();
		System.out.println("servlet called size="+size);
		pw.print(size);
	
	}
}
