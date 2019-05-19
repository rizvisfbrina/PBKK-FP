package oma.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.time.Duration;
import java.time.LocalDate;
import java.time.format.DateTimeFormatter;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.validation.Valid;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import oma.dao.LayananDAO;
import oma.dao.PelangganDAO;
import oma.dao.PesanDAO;
import oma.model.Layanan;
import oma.model.Login;
import oma.model.Pelanggan;
import oma.model.Pemesanan;
import oma.model.Admin;

@Controller
@RequestMapping("plg")
@SessionAttributes("model")
public class PlgController {
	
	@Autowired
	private PelangganDAO dao;
	
	@Autowired
	private LayananDAO layanandao;
	
	@Autowired
	private PesanDAO pesandao;
	
	@RequestMapping("/prosesDaftar")
	public ModelAndView daftarBaruPlg(@Valid @ModelAttribute("model") Pelanggan model, BindingResult bindres) {
		if(bindres.hasErrors()) {
			ModelAndView mav = new ModelAndView("sign-up");
			return mav;
		}
		else {
			ModelAndView mav = new ModelAndView("redirect:home-plg");
			dao.tambahPlg(model);
			mav.addObject("model", model);
			return mav;
		}
	}
	
	@RequestMapping("/home-plg")
	public ModelAndView halamanPelanggan() {
		ModelAndView mav = new ModelAndView("logged-pelanggan");
		List<Layanan> layanan = layanandao.getAllLayanan();
		mav.addObject("layanan", layanan);
		return mav;
	}
	
	@RequestMapping(value="deletePlg", method=RequestMethod.GET)
	public String deletePelanggan(@RequestParam("idpel") int idpel) {
		Pelanggan plg = dao.getPlg(idpel);
		dao.deletePlg(plg);
		return "redirect:/adm/daftarplg-adm";
	}
	
	@RequestMapping("/editPlg")
	public String openEditData() {
		return "editdata-plg";
	}
	
	@RequestMapping("/editDb")
	public String editMhs(@Valid @ModelAttribute("model") Pelanggan model, BindingResult bind) {
		if(bind.hasErrors()) {
			return "editPlg";
		}
		else {
			dao.editPlg(model);
			return "redirect:/plg/home-plg";
		}
	}
	
	@RequestMapping(value="pemesanan-plg", method=RequestMethod.GET)
	public ModelAndView pesanPage(@RequestParam("idpel") int idpel) {
		ModelAndView mav = new ModelAndView("pemesanan-plg");
		List<Pemesanan> listnya = pesandao.getAllPesan(idpel);
		DateFormat d = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		List<Pemesanan> pesan = pesandao.getAllPesan(idpel);
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
	
	@RequestMapping("logout")
	public String logout(SessionStatus session, ModelMap model) {
		session.setComplete();
		return "redirect:/";
	}
}
;