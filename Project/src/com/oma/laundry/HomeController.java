package com.oma.laundry;

import model.*;

import java.util.List;

import javax.validation.Valid;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String showMyPage() {
		return "index";
	}
	@RequestMapping("/login")
	public String loginPage(Model model){
		model.addAttribute("model", new Login());
		return "login";
	}
	@RequestMapping("/about")
	public String showAbout() {
		return "about";
	}
	@RequestMapping("/layanan")
	public String showLayanan() {
		return "layanan";
	}
	@RequestMapping("/prosesLogin")
	public ModelAndView prosesLogin(@Valid @ModelAttribute("model") Login model, BindingResult bindres, RedirectAttributes redir) {
		if(bindres.hasErrors()) {
			ModelAndView mav = new ModelAndView("/login");
			return mav;
		}
		else {
			if(model.getRole().equals("Pelanggan")) {
				SessionFactory s = new Configuration()
						.configure("hibernate.xml")
						.addAnnotatedClass(Pelanggan.class)
						.buildSessionFactory();
				Session ses = s.getCurrentSession();
				try {
					ses.beginTransaction();
					
					//get pelanggan
					Pelanggan user = ses.get(Pelanggan.class, model.getId() );
					if(user.getPassword().equals(model.getPassword())) {
						ModelAndView mav = new ModelAndView("redirect:/home-plg");
						redir.addFlashAttribute("model", user);
						return mav;
					}
					else {
						ModelAndView mav = new ModelAndView("/login");
						return mav;
					}

				}
				finally {
					s.close();
				}
			}
			else {
				ModelAndView mav = new ModelAndView("/login");
				return mav;
			}
			
		}
	}
	@RequestMapping("/home-plg")
	public ModelAndView halamanPelanggan(@ModelAttribute("model") Pelanggan pelanggan) {
		SessionFactory s = new Configuration()
				.configure("hibernate.xml")
				.addAnnotatedClass(Layanan.class)
				.buildSessionFactory();
		Session ses = s.getCurrentSession();
		ModelAndView mav = new ModelAndView("logged-user");
		try {
			ses.beginTransaction();
			
			//get pelanggan
			List<Layanan> daftarlayanan = ses.createQuery("from Layanan").list();
			//commit transaction
			
			ses.getTransaction().commit();
			
			mav.addObject("layanan", daftarlayanan);
		}
		finally {
			s.close();
		}
		
		return mav;
	}
}