package com.oma.laundry;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/admin")
public class AdminController {
	@RequestMapping("/home")
	public String showAdminPage() {
		return "admin/homeadmin";
	}
	@RequestMapping("/layanan")
	public String showAdminLayanan() {
		return "admin/editlayanan";
	}
	@RequestMapping("/pegawai")
	public String showAdminPegawai() {
		return "admin/editpegawai";
	}
	@RequestMapping("/laporan")
	public String showAdminLaporan() {
		return "admin/";
	}
}
