package model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="layanan")
public class Layanan {
	@Id
	@Column(name="idlay")
	private int idlay;
	
	@Column(name="nama")
	private String nama;
	
	@Column(name="harga")
	private int harga;
	
	@Column(name="lynket")
	private String ket;
	
	@Column(name="durasi")
	private int durasi;
	
	public int getDurasi() {
		return durasi;
	}

	public void setDurasi(int durasi) {
		this.durasi = durasi;
	}

	public String getKet() {
		return ket;
	}

	public void setKet(String ket) {
		this.ket = ket;
	}
	
	public int getIdlay() {
		return idlay;
	}
	
	public void setIdlay(int idlay) {
		this.idlay = idlay;
	}

	public String getNama() {
		return nama;
	}

	public void setNama(String nama) {
		this.nama = nama;
	}

	public int getHarga() {
		return harga;
	}

	public void setHarga(int harga) {
		this.harga = harga;
	}

	public Layanan(int idlay, String nama, int harga, String ket, int durasi) {
		this.idlay = idlay;
		this.nama = nama;
		this.harga = harga;
		this.ket = ket;
		this.durasi = durasi;
	}

	public Layanan() {
	}

	@Override
	public String toString() {
		return "Layanan [idlay=" + idlay + ", nama=" + nama + ", harga=" + harga + ", ket=" + ket + ", durasi=" + durasi
				+ "]";
	}
	
}
