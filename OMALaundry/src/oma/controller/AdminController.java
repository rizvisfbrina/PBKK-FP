package oma.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.Duration;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.stereotype.Service;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import oma.dao.LayananDAO;
import oma.dao.PelangganDAO;
import oma.dao.PesanDAO;
import oma.dao.AdminDAO;
import oma.model.Layanan;
import oma.model.Pelanggan;
import oma.model.Pemesanan;
import oma.model.Admin;
import oma.model.Status;

@Controller
@RequestMapping("adm")
@SessionAttributes("model")
public class AdminController {
	@Autowired
	private AdminDAO dao;
	
	@Autowired
	private PelangganDAO plgdao;
	
	@Autowired
	private LayananDAO lyndao;
	
	@Autowired
	private PesanDAO pesandao;
	
	@RequestMapping("/home-adm")
	public ModelAndView halamanAdmin() {
		ModelAndView mav = new ModelAndView("logged-admin");
		List<Layanan> layanan = lyndao.getAllLayanan();
		mav.addObject("layanan", layanan);
		return mav;
	}
	
	//INI NAMPILIN DAFTAR MAHASISWA VIA PUSTAKAWAN
	@RequestMapping("/daftarplg-adm")
	public ModelAndView daftarplgAdmin() {
		ModelAndView mav = new ModelAndView("daftarplg-admin");
		List<Pelanggan> plg = plgdao.getAllPlg();
		mav.addObject("pelanggan", plg);
		return mav;
	}
	
	@RequestMapping("/tambah-adm")
	public String tambahPustakawanPage(Model adm) {
		adm.addAttribute("adm", new Admin());
		return "tmbh-admin";
	}
	
	
	@RequestMapping("/daftarAdmin")
	public ModelAndView daftarBaruPtk(@Valid @ModelAttribute("adm") Admin adm, BindingResult bindres) {
		if(bindres.hasErrors()) {
			ModelAndView mav = new ModelAndView("tambah-adm");
			return mav;
		}
		else {
			dao.tambahAdm(adm);
			ModelAndView mav = new ModelAndView("redirect:/adm/home-adm");
			return mav;
		}
	}
	
	//INI BUAT NGEDIT DATA PUSTAKAWAN
	@RequestMapping("/editAdm")
	public String editAdminPage() {
		return "editdata-adm";
	}
	
	@RequestMapping("/editDb")
	public String editAdm(@Valid @ModelAttribute("model") Admin model, BindingResult bind) {
		if(bind.hasErrors()) {
			return "redirect:/adm/editAdm";
		}
		else {
			dao.editAdm(model);
			return "redirect:/adm/home-adm";
		}
	}
	
	
	@RequestMapping("/lihatpemesanan")
	public ModelAndView listPesanPage() {
		ModelAndView mav = new ModelAndView("pesan-adm");
		
		List<Pemesanan> pesan = pesandao.getAllDaftarPesan();
		mav.addObject("pesan", pesan);
		return mav;
	}
	
	@RequestMapping(value="statusPesan", method=RequestMethod.GET)
	public String ubahStatPesanPage(@RequestParam("idpesan") int idpesan, Model status, Model idps) {
		status.addAttribute("status", new Status());
		idps.addAttribute("idpesan", idpesan);
		return "pesanstat-adm";
	}
	
	@RequestMapping(value="prosesPesan", method= {RequestMethod.GET, RequestMethod.POST})
	public String ubahStatPesan(@Valid @ModelAttribute("status") Status status, @RequestParam("idpesan") int idpesan, BindingResult bind) {
		if(bind.hasErrors()) {
			return "redirect:/adm/editAdm";
		}
		else {
			Pemesanan ps = pesandao.getSpesifik(idpesan);
			ps.setStatus(status.getMessage());
			pesandao.updatePesan(ps);
			
			return "redirect:/adm/lihatpemesanan";
		}
	}
	
	
	@RequestMapping("/histori-adm")
	public ModelAndView historiPesanPage() {
		ModelAndView mav = new ModelAndView("historipesan-adm");
		List<Pemesanan> list = pesandao.getHistoriAdmin();
		mav.addObject("pesan", list);
		return mav;
	}
}
