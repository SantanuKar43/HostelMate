package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.hibernate.exception.ConstraintViolationException;

import dao.ResidentDao;
import db.Resident;

@WebServlet("/controller.SignUp")
public class SignUp extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String regd_no = req.getParameter("regd_no");
		String pwd = req.getParameter("pwd");
		String name = req.getParameter("name");
		String hostel = req.getParameter("hostel");
		String room = req.getParameter("room");
		String image = "default-image.jpg";
		
		Resident r = new Resident();
		r.setRoom(room);
		r.setHostel(hostel);
		r.setImage(image);
		r.setPwd(pwd);
		r.setName(name);
		r.setRegdNo(regd_no);
		System.out.println(regd_no);
		
		String msg=null;
		try{
			ResidentDao.save(r);
		}
		catch(ConstraintViolationException e){
			msg = "Resident already registered!";
			resp.sendRedirect("signup.jsp?msg="+msg);
		}

	}
}
