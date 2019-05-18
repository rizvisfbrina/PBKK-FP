package com.oma.laundry;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.SessionAttributes;

import dao.LayananDAO;
import dao.PesanDAO;
import model.Layanan;
import model.Pemesanan;

@Controller
@RequestMapping("pesan")
@SessionAttributes("model")
public class PesanController {
	@Autowired
	PesanDAO pesandao;
	
	@Autowired
	LayananDAO lyndao;
	
	@RequestMapping(value="prosesPesan", method=RequestMethod.GET)
	public String prosesPesan(@RequestParam("idpesan") int idpesan, @RequestParam("idpel") int idpel) {
		Pemesanan pesan = new Pemesanan();
		
		Layanan layanan = lyndao.getLayanan(idpesan);
		
		pesan.setJenisLayanan(layanan.getNama());
		pesan.setIdpesan(idpesan);
		pesan.setStatus("Menunggu");
		pesan.setIdpel(idpel);
		pesandao.savePesan(pesan);
		return "redirect:/plg/homeuser";
	}
}
