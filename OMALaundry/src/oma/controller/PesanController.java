package oma.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
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

import oma.dao.LayananDAO;
import oma.dao.PesanDAO;
import oma.model.Layanan;
import oma.model.Pelanggan;
import oma.model.Pemesanan;

@Controller
@RequestMapping("pesan")
@SessionAttributes("model")
public class PesanController {
	
	@Autowired
	PesanDAO dao;
	
	@Autowired
	LayananDAO layanandao;
	
	
//	@RequestMapping(value="prosesPesan", method=RequestMethod.GET)
//	public ModelAndView prosesPesan(@RequestParam("idlay") int idlay, 
//			@RequestParam("idpel") int idpel) {
//		ModelAndView mav = new ModelAndView("prosesTambahPesan");
//		Pemesanan list = dao.getSpesifik(idpel);
//		Layanan list2 = layanandao.getLayanan(idlay);
//		mav.addObject("pesan", list);
//		mav.addObject("layanan", list2);
//		return mav;
//	}
//	
	@RequestMapping(value="tambahPesan/{idpel}", method=RequestMethod.GET)
	public ModelAndView daftarBaruPlg(@Valid 
//			@ModelAttribute("model") Pemesanan model,
			@RequestParam("idpel") int idpel){
//			BindingResult bindres) {
//		if(bindres.hasErrors()) {
//			ModelAndView mav = new ModelAndView("logged-pelanggan");
//			return mav;
//		}
//		else {
			ModelAndView mav = new ModelAndView("prosesTambahPesan");
			Pemesanan list = dao.getSpesifik(idpel);
			mav.addObject("pesan", list);
			return mav;
//		}
	}
	
	@RequestMapping(value="prosesTambahPesan", method=RequestMethod.GET)
	public String prosesTambahPesan(@Valid @ModelAttribute("model") Pemesanan model, BindingResult bindingResult,
			@RequestParam("idpesan") int idpesan) {
//		Pemesanan pesan = new Pemesanan();
		//layanan
//		Layanan lyn = layanandao.getLayanan(idlay);
//		layanandao.editLayanan(lyn);
		
		//waktu pemesanan
//		DateFormat d = new SimpleDateFormat("yyyy-MM-dd");
//		Date date = new Date();
//		Calendar c = Calendar.getInstance();
//		c.setTime(date);
//		c.add(Calendar.DAY_OF_YEAR, 7);
		
//		pesan.setJenisLayanan(lyn.getNama());
//		pesan.setIdlay(idlay);
//		pesan.setStatus("Menunggu");
//		pesan.setKilo(kilo);
//		pesan.setTotal(kilo * harga);
//		pesan.setTgl_taruh(d.format(date));
//		pesan.setTgl_ambil(d.format(c.getTime()));
//		pesan.setIdpel(idpel);
		Pemesanan ps = dao.getSpesifik(idpesan);
		
		
		dao.savePesan(model);
		return "redirect:plg/home-plg";
	}
}
