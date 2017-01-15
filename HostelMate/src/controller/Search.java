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
import db.Resident;

@WebServlet("/controller.Search")
public class Search extends HttpServlet {
 @Override
 protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	// TODO Auto-generated method stub
	String search = req.getParameter("search");
	int index = Integer.parseInt(req.getParameter("index"));
	
	if(search.equals("")){
		return; 
	}
	List list = ResidentDao.getResidents(search,index*4,4);
	Iterator i = list.iterator();
	int size = list.size();
	Resident resident_array[] = new Resident[list.size()];
	list.toArray(resident_array);
	
	resp.setContentType("text/html");
	PrintWriter pw = resp.getWriter();
	if(size!=0){
		pw.write("<div class='jumbotron' style='width:70%;margin:auto'>");
		for(int r=0;r<size;r++){
			pw.write("<div class='media' style='padding:5px;' >");
			pw.write("<a class='media-left waves-light'>");
			pw.write("<img class='rounded-circle' src='controller.GetPhoto?image="+resident_array[r].getImage()+"' style='width:50px;height:50px;object-fit:cover;margin:0px 4px 10px 4px;'>");
			pw.write("</a>");
			pw.write("<div class='media-body'>");
			pw.write("<h4 class='media-heading'>"+resident_array[r].getName()+"</h4>");
			pw.write("<p class='float-md-left'><strong class='blue-text'>HOSTEL:</strong> "+resident_array[r].getHostel()+"</p>");
			pw.write("<p class='float-md-right'><strong class='blue-text'>ROOM:</strong> "+resident_array[r].getRoom()+"</p>");
			pw.write("</div>");
			pw.write("</div>");
			if(r<size-1){
				pw.write("<hr class='my-1'>");
			}
		}
		pw.write("</div>");
	}
	
 }
}
