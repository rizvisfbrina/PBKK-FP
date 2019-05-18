package oma.controller;

import javax.validation.Valid;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.servlet.ModelAndView;

import oma.dao.LayananDAO;
import oma.model.Layanan;
import oma.model.Pelanggan;
import oma.model.Admin;

@Controller
@RequestMapping("layanan")
@SessionAttributes("model")
public class LayananController {
	
	@Autowired
	private LayananDAO dao;
	
	@RequestMapping("/tambahLayanan")
	public String tambahLayananPage(Model layanan) {
		layanan.addAttribute("layanan", new Layanan());
		return "tmbh-layanan";
	}
	
	@RequestMapping("/insertDb")
	public ModelAndView daftarBaruLayanan(@Valid @ModelAttribute("layanan") Layanan layanan, BindingResult bindres) {
		if(bindres.hasErrors()) {
			ModelAndView mav = new ModelAndView("tmbh-layanan");
			return mav;
		}
		else {
			dao.tambahLayanan(layanan);
			ModelAndView mav = new ModelAndView("redirect:/adm/home-adm");
			return mav;
		}
	}
	
	@RequestMapping(value="deleteLayanan", method=RequestMethod.GET)
	public String deleteLayanan(@RequestParam("idlay") int idlay) {
		Layanan hapus = dao.getLayanan(idlay);
		dao.deleteLayanan(hapus);
		return "redirect:/adm/home-adm";
	}
	
//	@RequestMapping(value="/editStatus", method=RequestMethod.GET)
//	public String editStatusPage(Model layanan, @RequestParam("idlay") int idlay) {
//		Layanan lyn = dao.getLayanan(idlay);
//		layanan.addAttribute("statusnya", lyn);
//		return "editstatbuku-ptk";
//	}
	
//	@RequestMapping("/ubahStat")
//	public String editStatBuku(@Valid @ModelAttribute("statusnya") Layanan layanan,BindingResult bindres) {
//		if(bindres.hasErrors()) {
//			return "editStatus";
//		}
//		else {
//			dao.editLayanan(layanan);
//			return "redirect:/ptk/home-ptk";
//		}
//	}
	
}
