package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.ResidentDao;
import db.Resident;

@WebServlet("/controller.UpdateProfile")
public class UpdateProfile extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		HttpSession sess = req.getSession();
		String name = req.getParameter("name");
		String room = req.getParameter("room");
		String hostel = req.getParameter("hostel");
		String regd_no = (String)sess.getAttribute("regd_no");
		
		Resident r = ResidentDao.getResident(regd_no);
		r.setName(name);
		r.setRoom(room);
		r.setHostel(hostel);
		ResidentDao.updateProfile(r);
	}
}
