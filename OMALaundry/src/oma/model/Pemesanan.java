package oma.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="pemesanan")
public class Pemesanan {
	
	@Id
	@Column(name="idpesan")
	private int idpesan;
	
	@Column(name="idpel")
	private int idpel;
	
	@Column(name="idlay")
	private int idlay;
	
	@Column(name="kilo")
	private int kilo;
	
	@Column(name="total")
	private int total;
	
	@Column(name="status")
	private String status;
	
	@Column(name="jenis_lay")
	private String jenisLayanan;
	
	@Column(name="tgl_taruh")
	private String tgl_taruh; 
	
	@Column(name="tgl_ambil")
	private String tgl_ambil;
	
	public Pemesanan() {}

	public int getIdpesan() {
		return idpesan;
	}

	public void setIdpesan(int idpesan) {
		this.idpesan = idpesan;
	}

	public int getIdpel() {
		return idpel;
	}

	public void setIdpel(int idpel) {
		this.idpel = idpel;
	}

	public int getIdlay() {
		return idlay;
	}

	public void setIdlay(int idlay) {
		this.idlay = idlay;
	}

	public int getKilo() {
		return kilo;
	}

	public void setKilo(int kilo) {
		this.kilo = kilo;
	}

	public int getTotal() {
		return total;
	}

	public void setTotal(int total) {
		this.total = total;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
	}

	public String getJenisLayanan() {
		return jenisLayanan;
	}

	public void setJenisLayanan(String jenisLayanan) {
		this.jenisLayanan = jenisLayanan;
	}

	public String getTgl_taruh() {
		return tgl_taruh;
	}

	public void setTgl_taruh(String tgl_taruh) {
		this.tgl_taruh = tgl_taruh;
	}

	public String getTgl_ambil() {
		return tgl_ambil;
	}

	public void setTgl_ambil(String tgl_ambil) {
		this.tgl_ambil = tgl_ambil;
	}

	public Pemesanan(int idpesan, int idpel, int idlay, int kilo, int total, String status, String jenisLayanan,
			String tgl_taruh, String tgl_ambil) {
		super();
		this.idpesan = idpesan;
		this.idpel = idpel;
		this.idlay = idlay;
		this.kilo = kilo;
		this.total = total;
		this.status = status;
		this.jenisLayanan = jenisLayanan;
		this.tgl_taruh = tgl_taruh;
		this.tgl_ambil = tgl_ambil;
	}

	@Override
	public String toString() {
		return "Pemesanan [idpesan=" + idpesan + ", idpel=" + idpel + ", idlay=" + idlay + ", kilo=" + kilo + ", total="
				+ total + ", status=" + status + ", jenisLayanan=" + jenisLayanan + ", tgl_taruh=" + tgl_taruh
				+ ", tgl_ambil=" + tgl_ambil + "]";
	}
	
	
	
	
}
