package dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Pelanggan;

@Repository
public class PelangganDAOImpl implements PelangganDAO{

	@Autowired
	private SessionFactory ses;
	
	@Transactional
	@Override
	public void tambahPelanggan(Pelanggan plg) {
		Session session = ses.getCurrentSession();
		session.save(plg);
	}
	
	@Transactional
	@Override
	public Pelanggan getPelanggan(int idpel) {
		Session session = ses.getCurrentSession();
		Pelanggan plg = session.get(Pelanggan.class, idpel);
		return plg;
	}
	
	@Transactional
	@Override
	public void deletePelanggan(Pelanggan plg) {
		Session session = ses.getCurrentSession();
		session.delete(plg);
	}

	@Transactional
	@Override
	public List<Pelanggan> getAllPelanggan() {
		Session session = ses.getCurrentSession();
		List<Pelanggan> plg = session.createQuery("from Pelanggan").list();
		return plg;
	}

	@Transactional
	@Override
	public void editPelanggan(Pelanggan plg) {
		Session session = ses.getCurrentSession();
		session.update(plg);
	}
}
