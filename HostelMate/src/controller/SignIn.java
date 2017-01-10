package controller;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ResidentDao;
import db.Resident;

@WebServlet("/controller.SignIn")
public class SignIn extends HttpServlet {
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		String regd_no=req.getParameter("regd_no");
		String pwd=req.getParameter("pwd");
		
		Resident r = ResidentDao.getResident(regd_no);
		if(r!=null) {
			if(r.getPwd().equals(pwd)){
				System.out.println("signin success");
			}
			else {
				resp.sendRedirect("signin.jsp?msg=Password incorrect");
			}
		}
		else {
			resp.sendRedirect("signin.jsp?msg=Resident not registered yet!");
		}
	}

}
