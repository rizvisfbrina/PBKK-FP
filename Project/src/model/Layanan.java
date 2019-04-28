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
	private String idlay;
	
	@Column(name="nama")
	private String nama;
	
	@Column(name="harga")
	private String harga;
	
	@Column(name="kilo")
	private String kilo;
	
	public String getIdlay() {
		return idlay;
	}

	public void setIdlay(String idlay) {
		this.idlay = idlay;
	}

	public String getNama() {
		return nama;
	}

	public void setNama(String nama) {
		this.nama = nama;
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

	public Layanan(String idlay, String nama, String harga, String kilo) {
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
