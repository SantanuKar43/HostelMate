package controller;

import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import dao.ResidentDao;
import paths.ProvidePath;

@WebServlet("/controller.GetPhoto")
public class GetPhoto extends HttpServlet {
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String path = ProvidePath.getPhotoPath();
		String filename = req.getParameter("image");
		resp.setContentType("image/jpeg");
		File f = new File(path+filename);
		BufferedImage image = ImageIO.read(f);
		ImageIO.write(image, "jpg", resp.getOutputStream());
	}
}
