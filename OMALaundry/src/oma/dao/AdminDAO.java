package oma.dao;

import oma.model.Admin;

public interface AdminDAO {
	
	public Admin getAdm (int idadmin);
	public void tambahAdm(Admin adm);
	public void editAdm(Admin adm);
}
