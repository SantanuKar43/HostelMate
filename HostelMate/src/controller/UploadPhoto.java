package controller;

import java.io.File;
import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import dao.ResidentDao;
import db.Resident;

@WebServlet("/controller.UploadPhoto")
public class UploadPhoto extends HttpServlet {
	private String filePath=paths.ProvidePath.getPhotoPath();
	private int maxFileSize = 50*1024*1024;
	private int maxMemSize = 4*1024*1024;
	private File file ;
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String regd_no = (String)(req.getSession().getAttribute("regd_no"));
		Resident r = ResidentDao.getResident(regd_no);
		 DiskFileItemFactory factory = new DiskFileItemFactory();
		 factory.setSizeThreshold(maxMemSize);
		 
		 ServletFileUpload upload = new ServletFileUpload(factory);
		 upload.setSizeMax( maxFileSize );
		 try {
			List fileItems = upload.parseRequest(req);
			Iterator i = fileItems.iterator();
			while(i.hasNext()){
				FileItem fi = (FileItem)i.next();
				if(!fi.isFormField()){
					String fieldName = fi.getFieldName();
		            String fileName = regd_no+".jpg";
		            String image = fileName;
		            String contentType = fi.getContentType();
		            boolean isInMemory = fi.isInMemory();
		            long sizeInBytes = fi.getSize();
		            if( fileName.lastIndexOf("\\") >= 0 ){
			               file = new File( filePath + fileName.substring( fileName.lastIndexOf("\\"))) ;
			               
			        }else{
			               file = new File( filePath + fileName.substring(fileName.lastIndexOf("\\")+1)) ;
			               
			        }
		            r.setImage(image);
		            fi.write( file ) ;
		            ResidentDao.updateProfile(r);
				}
			}
		 } catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		 }
	}
}
