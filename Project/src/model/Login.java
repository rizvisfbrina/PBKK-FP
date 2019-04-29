package model;

public class Login {
	private int id;
	private String password;
	private String nama;
	private String email;
	private String nohp;
	private String role;
	
	public Login() {};
	
	public Login(int id, String password, String nama, String email, String nohp, String role) {
		this.id = id;
		this.password = password;
		this.nama = nama;
		this.email = email;
		this.nohp = nohp;
		this.role = role;
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
	public String getRole() {
		return role;
	}
	public void setRole(String role) {
		this.role = role;
	}
	
	
}
