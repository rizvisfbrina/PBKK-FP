package com.oma.laundry;

/*import javax.validation.Valid;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import dao.LayananDAO;
import model.Layanan;*/

/*@Controller
@RequestMapping("/layanan")*/
public class LayananController {
	/*
	 * @Autowired private LayananDAO dao;
	 */
	/*
	 * @RequestMapping("/tambahLayanan") public String tambahLayanan(Model layanan)
	 * { layanan.addAttribute("layanan", new Layanan()); return "add-layanan"; }
	 * 
	 * @RequestMapping("/insertDb") public ModelAndView
	 * daftarLayananBaru(@Valid @ModelAttribute("layanan") Layanan layanan,
	 * BindingResult result) { if(result.hasErrors()) { ModelAndView mav = new
	 * ModelAndView("add-layanan"); return mav; }else { dao.tambahLayanan(layanan);
	 * ModelAndView mav = new ModelAndView("redirect:/admin/homeadmin"); return mav;
	 * } }
	 * 
	 * @RequestMapping(value="deleteLayanan", method=RequestMethod.GET) public
	 * String deleteLayanan(@RequestParam("id") String idlay) { Layanan hapus =
	 * dao.getLayanan(idlay); dao.deleteLayanan(hapus); return
	 * "redirect:/admin/homeadmin"; }
	 * 
	 * 
	 * @RequestMapping(value="/editLayanan", method=RequestMethod.GET) public String
	 * editLayanan(Model layanan, @RequestParam("id") String idlay) { Layanan edit =
	 * dao.getLayanan(idlay); layanan.addAttribute("", edit); return "editlayanan";
	 * }
	 */
}
