package oma.dao;

import java.util.List;

import oma.model.Pemesanan;

public interface PesanDAO {

	public void savePesan(Pemesanan pesan);
	public List<Pemesanan> getAllPesan(int idpel);
	public List<Pemesanan> getAllDaftarPesan();
	public List<Pemesanan> getAllTransaksi();
	public void updatePesan(Pemesanan pesan);
	public Pemesanan getSpesifik(int idpesan);
	
	public List<Pemesanan> getHistoriPlg(int idpel);
	public List<Pemesanan> getHistoriAdmin();
	
}
