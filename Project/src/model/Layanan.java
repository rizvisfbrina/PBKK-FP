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
	
	@Column(name="kilo")
	private int kilo;
	
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

	public int getKilo() {
		return kilo;
	}

	public void setKilo(int kilo) {
		this.kilo = kilo;
	}

	public Layanan(int idlay, String nama, int harga, int kilo) {
		super();
		this.idlay = idlay;
		this.nama = nama;
		this.harga = harga;
		this.kilo = kilo;
	}

	public Layanan() {
		super();
	}

	@Override
	public String toString() {
		return "Layanan [idlay=" + idlay + ", nama=" + nama + ", harga=" + harga + ", kilo=" + kilo + "]";
	}
	
}
