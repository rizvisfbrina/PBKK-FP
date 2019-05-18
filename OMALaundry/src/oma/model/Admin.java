package oma.model;

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
	
	@Column(name="username")
	private String username;
	
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
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
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
	
	public Admin() {}
	public Admin(int idadmin, String nama, String username, String password, String email, String nohp) {
		super();
		this.idadmin = idadmin;
		this.nama = nama;
		this.username = username;
		this.password = password;
		this.email = email;
		this.nohp = nohp;
	}
	
	@Override
	public String toString() {
		return "Admin [idadmin=" + idadmin + ", nama=" + nama + ", username=" + username + ", password=" + password
				+ ", email=" + email + ", nohp=" + nohp + "]";
	}
	
	
	
}
