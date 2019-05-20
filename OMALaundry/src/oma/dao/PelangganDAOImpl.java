package oma.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import oma.model.Pelanggan;

@Repository
public class PelangganDAOImpl implements PelangganDAO {

	@Autowired
	private SessionFactory s;
	
	@Transactional
	@Override
	public String tambahPlg(Pelanggan plg) {
		Session session = s.getCurrentSession();
		session.save(plg);
		return null;
	}

	@Transactional
	@Override
	public Pelanggan getPlg(int idpel) {
		Session session = s.getCurrentSession();
		Pelanggan plg = session.get(Pelanggan.class, idpel);
		return plg;
	}
	
	@Transactional
	@Override
	public void deletePlg(Pelanggan plg) {
		Session session = s.getCurrentSession();
		session.delete(plg);
	}
	
	@Transactional
	@Override
	public List<Pelanggan> getAllPlg(){
		Session session = s.getCurrentSession();
		List<Pelanggan> plg = session.createQuery("from Pelanggan").list();
		return plg;
	}
	
	@Transactional
	@Override
	public void editPlg(Pelanggan plg) {
		Session session = s.getCurrentSession();
		session.update(plg);
	}
}
