package dao;

import java.util.List;

import model.Pemesanan;

public interface PesanDAO {
	public void savePesan(Pemesanan pesan);
	public List<Pemesanan>getAllPesanPlg(int idpesan);
	public List<Pemesanan>getAllDaftarPesan();
	public void updatepesan(Pemesanan pesan);
	public Pemesanan getSpesifik(int id);
	
	public List<Pemesanan> getHistoriPlg(int idpel);
	public List<Pemesanan> getHistoriAdmin();
}
