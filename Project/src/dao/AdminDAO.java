package dao;

import model.Admin;

public interface AdminDAO {
	public Admin getAdmin(String idadmin);
	public void tambahAdmin(Admin adm);
	public void editAdmin(Admin adm);
}
