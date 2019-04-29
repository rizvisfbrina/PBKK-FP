package model;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name="akun")
public class Akun {
	@Id
	@Column(name="idakun")
	private int id;
	
	@Column(name="password")
	private String password;
	
	@Column(name="username")
	private String username;
	
	@Column(name="nama")
	private String nama;
	
	@Column(name="email")
	private String email;
	
	@Column(name="nohp")
	private String nohp;
	
	@Column(name="role")
	private String role;
	
	public Akun() {}

	public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
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

	public String getRole() {
		return role;
	}

	public void setRole(String role) {
		this.role = role;
	}

	public Akun(int id, String password, String username, String nama, String email, String nohp, String role) {
		this.id = id;
		this.password = password;
		this.username = username;
		this.nama = nama;
		this.email = email;
		this.nohp = nohp;
		this.role = role;
	};
	
	
}
