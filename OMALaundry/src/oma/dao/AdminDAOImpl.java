package oma.dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import oma.model.Admin;

@Repository
public class AdminDAOImpl implements AdminDAO {
	
	@Autowired
	SessionFactory s;
	
	@Transactional
	@Override
	public void tambahAdm(Admin adm) {
		Session session = s.getCurrentSession();
		session.save(adm);
	}
	
	@Transactional
	@Override
	public void editAdm(Admin adm) {
		Session session = s.getCurrentSession();
		session.update(adm);
	}
	
	@Transactional
	@Override
	public Admin getAdm(int idadmin) {
		Session session = s.getCurrentSession();
		Admin adm = session.get(Admin.class, idadmin);
		return adm;
	}
}
