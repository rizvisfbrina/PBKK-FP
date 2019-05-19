package oma.dao;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.transform.Transformers;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import oma.model.Layanan;
import oma.model.Pemesanan;

@Repository
public class PesanDAOImpl implements PesanDAO {
	
	@Autowired
	private SessionFactory s;
	
	
	@Transactional
	@Override
	public void savePesan(Pemesanan pesan) {
		Session session = s.getCurrentSession();
		session.save(pesan);
	}
	
	@Transactional
	@Override
	public List<Pemesanan> getAllPesan(int idpel){
		Session session = s.getCurrentSession();
		String sql = "from Pemesanan as ps where ps.idpel = '"+idpel+"' and (ps.status = 'Menunggu' or ps.status = 'Proses' or ps.status = 'Selesai')";
		List<Pemesanan> pesans = session.createQuery(sql).list();
		//System.out.println(pinjams);
		return pesans;
	}
	
	@Transactional
	@Override
	public List<Pemesanan> getAllDaftarPesan(){
		Session session = s.getCurrentSession();
		String sql = "from Pemesanan as ps where ps.status = 'Menunggu' or ps.status = 'Proses' or ps.status = 'Selesai'";
		List<Pemesanan> pesan = session.createQuery(sql).list();
		//System.out.println(pinjam);
		return pesan;
	}
	@Transactional
	@Override
	public List<Pemesanan> getAllTransaksi(){
		Session session = s.getCurrentSession();
		String sql = "from Pemesanan as ps where ps.status = 'Menunggu' or ps.status = 'Proses'";
		List<Pemesanan> pesan = session.createQuery(sql).list();
		//System.out.println(pinjam);
		return pesan;
	}
	@Transactional
	@Override
	public Pemesanan getSpesifik(int idpesan) {
		Session session = s.getCurrentSession();
		Pemesanan ps = session.get(Pemesanan.class, idpesan);
		return ps;
	}
	
	@Transactional
	@Override
	public void updatePesan(Pemesanan pesan) {
		Session session = s.getCurrentSession();
		session.update(pesan);
	}
	
	@Transactional
	@Override
	public List<Pemesanan> getHistoriPlg(int idpel){
		Session session = s.getCurrentSession();
		String sql= "from Pemesanan as ps where ps.idpel = '"+idpel+"'";
		List<Pemesanan> list = session.createQuery(sql).list();
		return list;
	}
	
	@Transactional
	@Override
	public List<Pemesanan> getHistoriAdmin(){
		Session session = s.getCurrentSession();
		String sql = "from Pemesanan as ps where ps.status = 'Selesai'";
		List<Pemesanan> pesan = session.createQuery(sql).list();
		return pesan;
	}
}
