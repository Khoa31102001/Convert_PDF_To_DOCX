package controller;

import java.io.BufferedInputStream;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import model.bean.Account;
import model.bean.Source;
import model.bo.SourceBo;


@WebServlet("/DownloadServlet")
public class DownloadServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public DownloadServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// Thiết lập thông tin trả về
		SourceBo sourcebo = new SourceBo();
		int id= Integer.parseInt(request.getParameter("id"));
		
		Source source = sourcebo.getSource(id);
		byte[] data = source.getDocument_text();
		response.setContentType("application/vnd.openxmlformats-officedocument.wordprocessing‌​ml.document");
	    response.setHeader("Content-disposition", "attachment; filename=" + source.getFilename() + ".docx");
	    response.setContentLength(data.length);
	    InputStream inputStream = new BufferedInputStream(new ByteArrayInputStream(data));
	    // Ghi file ra response outputstream. 
	    OutputStream outStream = response.getOutputStream();
	    int bytesRead = -1;
	    while ((bytesRead = inputStream.read()) != -1) {
	      outStream.write(bytesRead);
	    }
	    inputStream.close();
	    outStream.close();
	}


	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
