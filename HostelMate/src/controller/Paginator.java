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

@WebServlet("/controller.Paginator")
public class Paginator extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String search = req.getParameter("search");
		if(search.equals("")){
			return; 
		}

		resp.setCharacterEncoding("UTF-8");
		resp.setContentType("text/html; charset=UTF-8");
		PrintWriter pw = resp.getWriter();
		List list = ResidentDao.getResidents(search);
		Iterator i = list.iterator();
		int size = list.size();
		pw.write("<li class='page-item disabled left-arrow'><a class='page-link' href=''#' aria-label='Previous'><span aria-hidden='true'>&laquo;</span><span class='sr-only'>Previous</span></a></li>");
		
		String active_class = null;
		for(int x=1 ; x <= ((size%4==0)?(size/4):(size/4+1)) ; x++){
			if(x==1) active_class = "active";
			else active_class = null;
			pw.write("<li class='page-item "+active_class+"'><a class='page-link index' href='#'>"+x+"</a></li>");
		}
		
		pw.write("<li class='page-item right-arrow'><a class='page-link' href='#' aria-label='Next'><span aria-hidden='true'>&raquo;</span><span class='sr-only'>Next</span></a></li>");
	}
}
