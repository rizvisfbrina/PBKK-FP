package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="admin")
public class Admin {
	@Id
	@Column(name="idadmin")
	private int idadmin;
	
	@Column(name="nama")
	private String nama;
	
	@Column(name="password")
	private String password;
	
	@Column(name="email")
	private String email;
	
	@Column(name="no_hp")
	private String nohp;

	public int getIdadmin() {
		return idadmin;
	}

	public void setIdadmin(int idadmin) {
		this.idadmin = idadmin;
	}

	public String getNama() {
		return nama;
	}

	public void setNama(String nama) {
		this.nama = nama;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

	@Override
	public String toString() {
		return "Admin [idadmin=" + idadmin + ", nama=" + nama + ", password=" + password + ", email=" + email
				+ ", nohp=" + nohp + "]";
	}

	public Admin(int idadmin, String nama, String password, String email, String nohp) {
		super();
		this.idadmin = idadmin;
		this.nama = nama;
		this.password = password;
		this.email = email;
		this.nohp = nohp;
	}

	public Admin() {
		super();
	}
	
}
