package oma.dao;

import java.util.List;

import oma.model.Layanan;

public interface LayananDAO {

	public void tambahLayanan(Layanan layanan);
	public Layanan getLayanan (int idlay); 
	public void deleteLayanan(Layanan layanan);
	public List<Layanan> getAllLayanan();
	public void editLayanan(Layanan layanan);
}