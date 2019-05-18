package dao;

import model.Admin;

public interface AdminDAO {
	public Admin getAdmin(int idadmin);
	public void tambahAdmin(Admin adm);
	public void editAdmin(Admin adm);
}
