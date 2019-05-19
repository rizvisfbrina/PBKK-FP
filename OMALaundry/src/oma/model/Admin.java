package oma.model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

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
	
	@NotNull(message="is required")
	@Size(min=1, message="is required")
	@Column(name="password")
	private String password;
	
	@NotNull(message="is required")
	@Size(min=1, message="is required")
	@Pattern(regexp="\\\\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\\\\.[A-Z]{2,4}\\\\b")
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
