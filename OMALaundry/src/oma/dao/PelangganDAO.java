package oma.dao;

import java.util.List;

import oma.model.Pelanggan;

public interface PelangganDAO {

	public String tambahPlg(Pelanggan plg);
	public Pelanggan getPlg(int idpel);
	public void deletePlg(Pelanggan plg);
	public List<Pelanggan> getAllPlg();
	public void editPlg(Pelanggan plg);
}
