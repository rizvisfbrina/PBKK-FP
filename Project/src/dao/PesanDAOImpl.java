package dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import model.Pemesanan;

@Repository
public class PesanDAOImpl implements PesanDAO {
	@Autowired
	private SessionFactory ses;
	
	@Transactional
	@Override
	public void savePesan(Pemesanan pesan) {
		Session session = ses.getCurrentSession();
		session.save(pesan);
	}
	
	@Transactional
	@Override
	public List<> getAllPesanPlg(String idpesan){
		Session session = ses.getCurrentSession();
//		String sql = "SELECT pemesanan.*, layanan.nama FROM pemesanan, layanan where ";
		List<> mpesan = session.createSQLQuery(sql).list();
		return mpesan;
	}
}
