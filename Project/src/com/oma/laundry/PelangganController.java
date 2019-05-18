package com.oma.laundry;

public class PelangganController {

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.Duration;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import dao.LayananDAO;
import dao.PelangganDAO;
import dao.PesanDAO;
import model.Layanan;
import model.Pelanggan;
import model.Pemesanan;

@Controller
@RequestMapping("plg")
@SessionAttributes("model")
public class PelangganController {
	@Autowired
	private PelangganDAO plgdao;
	
	@Autowired
	private LayananDAO lyndao;
	
	@Autowired
	private PesanDAO pesandao;
	
	@RequestMapping("/prosesDaftar")
	public ModelAndView daftarPlg(@Valid @ModelAttribute("model") Pelanggan model, BindingResult bindres) {
		if(bindres.hasErrors()) {
			ModelAndView mav = new ModelAndView("register");
			return mav;
		}
		else {
			ModelAndView mav = new ModelAndView("redirect:homeuser");
			plgdao.tambahPelanggan(model);
			mav.addObject("model", model);
			return mav;
		}
	}
	@RequestMapping("/homeuser")
	public ModelAndView halamanPelanggan() {
		ModelAndView mav = new ModelAndView("logged-user");
		List<Layanan> layanan = lyndao.getAllLayanan();
		mav.addObject("layanan", layanan);
		return mav;
	}
	@RequestMapping(value="deleteUser", method=RequestMethod.GET)
	public String deletePelanggan(@RequestParam("idpel") int idpel) {
		Pelanggan plg = plgdao.getPelanggan(idpel);
		plgdao.deletePelanggan(plg);
		return "redirect:/admin/daftaruser-admin";
	}
	@RequestMapping("/editUser")
	public String openEditData() {
		return "editdata-user";
	}
	@RequestMapping("/editDb")
	public String editUser(@Valid @ModelAttribute("model") Pelanggan model, BindingResult bind) {
		if(bind.hasErrors()) {
			return "editUser";
		}
		else {
			plgdao.editPelanggan(model);
			return "redirect:/plg/homeuser";
		}
	}
	@RequestMapping(value="pesan-plg", method=RequestMethod.GET)
	public ModelAndView pesanPage(@RequestParam("idpel") int idpel) {
		ModelAndView mav = new ModelAndView("pesan-plg");
		
		List<Pemesanan> pesan = pesandao.getAllPesanPlg(idpel);
		mav.addObject("pesan", pesan);
		return mav;
	}
	@RequestMapping(value="histori-plg", method=RequestMethod.GET)
	public ModelAndView historiPage(@RequestParam("idpel") int idpel) {
		ModelAndView mav = new ModelAndView("historipesan-plg");
		List<Pemesanan> list = pesandao.getHistoriPlg(idpel);
		mav.addObject("pesan", list);
		return mav;
	}
}
