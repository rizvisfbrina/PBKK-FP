package oma.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import oma.model.Layanan;

@Repository
public class LayananDAOImpl implements LayananDAO {

	@Autowired
	private SessionFactory s;
	
	@Transactional
	@Override
	public void tambahLayanan(Layanan layanan) {
		Session session = s.getCurrentSession();
		session.save(layanan);
	}
	
	@Transactional
	@Override
	public Layanan getLayanan(int idlay) {
		Session session = s.getCurrentSession();
		Layanan layanan = session.get(Layanan.class, idlay);
		return layanan;
	}
	
	@Transactional
	@Override
	public void deleteLayanan(Layanan layanan) {
		Session session = s.getCurrentSession();
		session.delete(layanan);
	}

	@Transactional
	@Override
	public List<Layanan> getAllLayanan(){
		Session session = s.getCurrentSession();
		List<Layanan> layanan = session.createQuery("from Layanan").list();
		return layanan;
	}
	
	@Transactional
	@Override
	public void editLayanan(Layanan layanan) {
		Session session = s.getCurrentSession();
		session.update(layanan);
	}
}
