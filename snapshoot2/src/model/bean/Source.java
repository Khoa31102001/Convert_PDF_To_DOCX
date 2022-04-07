package model.bean;

public class Source {
	private int id;
	private String filename;
	private byte[] pdf_text;
	private byte[] document_text;
	private boolean status;
	private String username;
	
	
	
	
	public Source(String filename, byte[] document_text) {
		super();
		this.filename = filename;
		this.document_text=document_text;
	}


	public Source(int id, String filename, boolean status, String username) {
		super();
		this.id = id;
		this.filename = filename;
		this.status = status;
		this.username = username;
	}


	public Source(String filename, boolean status, String username) {
		super();
		this.filename = filename;
		this.status = status;
		this.username = username;
	}


	public String getFilename() {
		return filename;
	}
	public void setFilename(String filename) {
		this.filename = filename;
	}
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
	public byte[] getPdf_text() {
		return pdf_text;
	}
	public void setPdf_text(byte[] pdf_text) {
		this.pdf_text = pdf_text;
	}
	public byte[] getDocument_text() {
		return document_text;
	}
	public void setDocument_text(byte[] document_text) {
		this.document_text = document_text;
	}


	public int getId() {
		return id;
	}


	public void setId(int id) {
		this.id = id;
	}


	public boolean isStatus() {
		return status;
	}


	public void setStatus(boolean status) {
		this.status = status;
	}
	
	
	
}
