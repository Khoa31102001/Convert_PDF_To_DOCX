package model.bo;

import java.util.List;

import model.bean.Account;
import model.dao.AccountDao;

public class AccountBo {
	private AccountDao dao;
	public AccountBo() {
		dao = new AccountDao();
	}
	
	public List<Account> getAll(){
		return dao.getAll();
	}
	
	public boolean isExist(String username,String password){
		return dao.isExist(username, password);
	}
	
	public boolean save(Account account) {
		return dao.save(account);
	}
}
