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

@WebServlet("/controller.SearchMsg")
public class SearchMsg extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String search = req.getParameter("search");
		List list = ResidentDao.getResidents(search);
		Iterator i = list.iterator();
		int size = list.size();
		
		resp.setContentType("text/html");
		PrintWriter pw = resp.getWriter();
		pw.write("'"+search+"' returned "+size+" results.");
	}
}
