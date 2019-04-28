package model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="pelanggan")
public class Pelanggan {
	@Column(name="nama")
	private String nama;
	
	@Id
	@Column(name="idpel")
	private String idpel;
	
	@Column(name="email")
	private String email;
	
	@Column(name="no_hp")
	private String nohp;
	
	@Column(name="password")
	private String password;
	
	
	
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getNama() {
		return nama;
	}
	public void setNama(String nama) {
		this.nama = nama;
	}
	public String getIdpel() {
		return idpel;
	}
	public void setIdpel(String idpel) {
		this.idpel = idpel;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getNohp() {
		return nohp;
	}
	public void setNohp(String nohp) {
		this.nohp = nohp;
	}
	
	public Pelanggan() {}
	public Pelanggan(String nama, String idpel, String email, String nohp, String password) {
		this.nama = nama;
		this.idpel = idpel;
		this.email = email;
		this.nohp = nohp;
		this.password = password;
	}
	
	@Override
	public String toString() {
		return "Pelanggan [nama=" + nama + ", idpel=" + idpel + ", email=" + email + ", nohp=" + nohp + ", password="
				+ password + "]";
	}
	
	
	
}
