package oma.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

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
	
	
	@RequestMapping(value="prosesPesan", method=RequestMethod.GET)
	public String prosesPesan(@RequestParam("idlay") int idlay, 
			@RequestParam("idpel") int idpel) {
		Pemesanan pesan = new Pemesanan();
		//layanan
		Layanan lyn = layanandao.getLayanan(idlay);
		layanandao.editLayanan(lyn);
		
		pesan.setIdlay(idlay);
		pesan.setIdpel(idpel);
		dao.savePesan(pesan);
		return "prosesTambahPesan";
	}
	
	@RequestMapping(value="prosesTambahPesan", method=RequestMethod.GET)
	public String prosesTambahPesan(@RequestParam("idlay") int idlay, 
			@RequestParam("idpel") int idpel, 
			@RequestParam("kilo") int kilo,
			@RequestParam("harga") int harga) {
		Pemesanan pesan = new Pemesanan();
		//layanan
		Layanan lyn = layanandao.getLayanan(idlay);
		layanandao.editLayanan(lyn);
		
		//waktu pemesanan
		DateFormat d = new SimpleDateFormat("yyyy-MM-dd");
		Date date = new Date();
		Calendar c = Calendar.getInstance();
		c.setTime(date);
		c.add(Calendar.DAY_OF_YEAR, 7);
		
		pesan.setJenisLayanan(lyn.getNama());
		pesan.setIdlay(idlay);
		pesan.setStatus("Menunggu");
		pesan.setKilo(kilo);
		pesan.setTotal(kilo * harga);
		pesan.setTgl_taruh(d.format(date));
		pesan.setTgl_ambil(d.format(c.getTime()));
		pesan.setIdpel(idpel);
		dao.savePesan(pesan);
		return "redirect:plg/home-plg";
	}
}
