package dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Layanan;

@Repository
public class LayananDAOImpl implements LayananDAO {
	
	@Autowired
	private SessionFactory ses;
	
	@Transactional
	@Override
	public void tambahLayanan(Layanan layanan) {
		Session session = ses.getCurrentSession();
		session.save(layanan);
	}

	@Transactional
	@Override
	public Layanan getLayanan(String idlay) {
		Session session = ses.getCurrentSession();
		Layanan layanan = session.get(Layanan.class, idlay);
		return layanan;
	}

	@Transactional
	@Override
	public void deleteLayanan(Layanan layanan) {
		Session session = ses.getCurrentSession();
		session.delete(layanan);
	}

	@Transactional
	@Override
	public List<Layanan> getAllLayanan() {
		Session session = ses.getCurrentSession();
		List<Layanan> layanan = session.createQuery("from Layanan").list();
		return layanan;
	}

	@Transactional
	@Override
	public void editLayanan(Layanan layanan) {
		Session session = ses.getCurrentSession();
		session.update(layanan);
	}

}
