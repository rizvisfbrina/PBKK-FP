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
	public List<Pemesanan> getAllPesanPlg(int idpesan){
//		Session session = ses.getCurrentSession();
//		String sql = "SELECT pemesanan.*, layanan.nama FROM pemesanan, layanan where ";
//		List<Pemesanan> mpesan = session.createSQLQuery(sql).list();
//		return mpesan;
		return null;
	}

	@Transactional
	@Override
	public List<Pemesanan> getAllDaftarPesan() {
//		Session session = ses.getCurrentSession();
//		String sql = "from Peminjaman as pj where pj.status_peminjaman = 'Menunggu' or pj.status_peminjaman = 'OK' or pj.status_peminjaman = 'Terlambat'";
//		List<Pemesanan> pesan = session.createQuery(sql).list();
		//System.out.println(pesan);
		return null;
	}

	@Override
	public void updatepesan(Pemesanan pesan) {
		
		
	}
	
	@Transactional
	@Override
	public Pemesanan getSpesifik(int id) {
//		Session session = ses.getCurrentSession();
//		Pemesanan pesan = session.get(Pemesanan.class, id);
		return null;
	}

	@Transactional
	@Override
	public List<Pemesanan> getHistoriPlg(int idpel) {
//		Session session = ses.getCurrentSession();
//		String sql= "from Peminjaman as pj where pj.nrp = '"+nrp+"' and (pj.status_peminjaman = 'Selesai' or status_peminjaman = 'Ditolak')";
//		List<Pemesanan> list = session.createQuery(sql).list();
//		return list;
		return null;
	}
	
	@Transactional
	@Override
	public List<Pemesanan> getHistoriAdmin() {
//		Session session = ses.getCurrentSession();
//		String sql = "from Peminjaman as pj where pj.status_peminjaman = 'Selesai' or pj.status_peminjaman = 'Ditolak'";
//		List<Pemesanan> pesan = session.createQuery(sql).list();
		return null;
	}
}
