package oma.model;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.validation.constraints.NotNull;
import javax.validation.constraints.Pattern;
import javax.validation.constraints.Size;

@Entity
@Table(name="pelanggan")
public class Pelanggan {
	@NotNull(message="is required")
	@Size(min=1, message="is required")
	@Column(name="nama")
	private String nama;
	
	@Column(name="username")
	private String username;
	
	@Id
	@Column(name="idpel")
	private int idpel;
	
	@NotNull(message="is required")
	@Size(min=1, message="is required")
	@Pattern(regexp="\\\\b[A-Z0-9._%+-]+@[A-Z0-9.-]+\\\\.[A-Z]{2,4}\\\\b")
	@Column(name="email")
	private String email;
	
	@Column(name="no_hp")
	private String nohp;
	
	@NotNull(message="is required")
	@Size(min=1, message="is required")
	@Column(name="password")
	private String password;
	
	public String getUsername() {
		return username;
	}
	public void setUsername(String username) {
		this.username = username;
	}
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
	public int getIdpel() {
		return idpel;
	}
	public void setIdpel(int idpel) {
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
	public Pelanggan(String nama, String username, int idpel, String email, String nohp, String password) {
		super();
		this.nama = nama;
		this.username = username;
		this.idpel = idpel;
		this.email = email;
		this.nohp = nohp;
		this.password = password;
	}
	@Override
	public String toString() {
		return "Pelanggan [nama=" + nama + ", username=" + username + ", idpel=" + idpel + ", email=" + email
				+ ", nohp=" + nohp + ", password=" + password + "]";
	}	
}
