package model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="pemesanan")
public class Pemesanan {
	@Column(name="jenis_layanan")
	private String jenisLayanan;
	
	@Id
	@Column(name="idpesan")
	private int idpesan;
	
	@Column(name="idpel")
	private int idpel;
	
	@Column(name="idlay")
	private int idlay;
	
	@Column(name="harga")
	private String harga;
	
	@Column(name="kilo")
	private String kilo;
	
	@Column(name="total")
	private String total;
	
	@Column(name="status")
	private String status;

	public Pemesanan(String jenisLayanan, int idpesan, int idpel, int idlay, String harga, String kilo, String total,
			String status) {
		super();
		this.jenisLayanan = jenisLayanan;
		this.idpesan = idpesan;
		this.idpel = idpel;
		this.idlay = idlay;
		this.harga = harga;
		this.kilo = kilo;
		this.total = total;
		this.status = status;
	}

	public Pemesanan() {
		super();
	}

	public String getJenisLayanan() {
		return jenisLayanan;
	}

	public void setJenisLayanan(String jenisLayanan) {
		this.jenisLayanan = jenisLayanan;
	}

	public int getIdpesan() {
		return idpesan;
	}

	public void setIdpesan(int idpesan) {
		this.idpesan = idpesan;
	}

	public String getHarga() {
		return harga;
	}

	public void setHarga(String harga) {
		this.harga = harga;
	}

	public String getKilo() {
		return kilo;
	}

	public void setKilo(String kilo) {
		this.kilo = kilo;
	}

	public String getTotal() {
		return total;
	}

	public void setTotal(String total) {
		this.total = total;
	}

	public String getStatus() {
		return status;
	}

	public void setStatus(String status) {
		this.status = status;
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

	@Override
	public String toString() {
		return "Pemesanan [jenisLayanan=" + jenisLayanan + ", idpesan=" + idpesan + ", idpel=" + idpel + ", idlay="
				+ idlay + ", harga=" + harga + ", kilo=" + kilo + ", total=" + total + ", status=" + status + "]";
	}

	
	
}
