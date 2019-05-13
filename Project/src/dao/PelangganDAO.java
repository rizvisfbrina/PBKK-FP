package dao;

import java.util.List;

import model.Pelanggan;

public interface PelangganDAO {
	public void tambahPelanggan(Pelanggan plg);
	public Pelanggan getPelanggan(String idpel);
	public void deletePelanggan(Pelanggan plg);
	public List<Pelanggan> getAllPelanggan();
	public void editPelanggan(Pelanggan plg);
}
