package dao;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Admin;

@Repository
public class AdminDAOImpl implements AdminDAO {

	@Autowired
	SessionFactory ses;
	
	@Transactional
	@Override
	public Admin getAdmin(int idadmin) {
		Session session = ses.getCurrentSession();
		Admin adm = session.get(Admin.class, idadmin);
		return adm;
	}
	
	@Transactional
	@Override
	public void tambahAdmin(Admin adm) {
		Session session = ses.getCurrentSession();
		session.save(adm);
	}
	@Transactional
	@Override
	public void editAdmin(Admin adm) {
		Session session = ses.getCurrentSession();
		session.update(adm);
	}
}
