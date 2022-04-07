package model.bo;

import java.io.InputStream;
import java.util.List;

import model.bean.Source;
import model.dao.SourceDao;

public class SourceBo {
	private SourceDao dao;
	
	public SourceBo() {
		dao = new SourceDao();
	}
	
	public List<Source> getAll(){
		return dao.getAll();
	}
	public List<Source> get(String username){
		return dao.get(username);
	}
	
	public byte[] get(int id) {
		return dao.get(id);
	}
	
	public Source getSource(int id){
		return dao.getSource(id);
	}
	
	public boolean save(InputStream is, Source source) {
		return dao.save(is,source);
	}
	
	public boolean delete(int id) {
		return dao.delete(id);
	}
}
