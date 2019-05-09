package com.oma.laundry;

import model.*;

import java.util.Arrays;
import java.util.List;

import javax.validation.Valid;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.hibernate.query.Query;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

@Controller
public class HomeController {
	@RequestMapping(value = { "/a", "/" })
	public String showMyPage() {
		return "index";
	}

	@RequestMapping("/login")
	public String loginPage(Model model) {
		model.addAttribute("model", new Akun());
		return "login";
	}

	@RequestMapping("/about")
	public String showAbout() {
		return "about";
	}

	@RequestMapping("/registrasi")
	public String showRegis() {
		return "register";
	}

	@RequestMapping("/layanan")
	public String showLayanan() {
		return "layanan";
	}

	@RequestMapping("/prosesDaftar")
	public ModelAndView daftarPelanggan(@Valid @ModelAttribute("model") Pelanggan model, BindingResult bindres,
			RedirectAttributes redir) {
		SessionFactory s = new Configuration().configure("hibernate.xml").addAnnotatedClass(Pelanggan.class)
				.buildSessionFactory();
		Session ses = s.getCurrentSession();

		if (bindres.hasErrors()) {
			ModelAndView mav = new ModelAndView("register");
			return mav;
		} else {
			try {
				ses.beginTransaction();
				ses.save(model);
				ses.getTransaction().commit();
			} finally {
				s.close();
			}
			ModelAndView mav = new ModelAndView("redirect:/home-plg");
			redir.addFlashAttribute("model", model);
			return mav;
		}
	}

	@RequestMapping("/prosesLogin")
	public ModelAndView prosesLogin(@Valid @ModelAttribute("model") Akun modell, BindingResult bindres,
			RedirectAttributes redir) {
		SessionFactory s = new Configuration().configure("hibernate.xml").addAnnotatedClass(Akun.class)
				.buildSessionFactory();
		Session ses = s.getCurrentSession();

		if (bindres.hasErrors()) {
			ModelAndView mav = new ModelAndView("/login");
			return mav;
		} else if (modell.getRole().equals("Pelanggan")) {
			try {
				ses.beginTransaction();

				Query<Integer> a = ses.createQuery("select id from Akun where username = :uname");
				a.setParameter("uname", modell.getUsername());
				Integer res = (Integer) a.uniqueResult();
				Akun user = ses.get(Akun.class, res);

				if (user.getUsername().equals(modell.getUsername())
						&& user.getPassword().equals(modell.getPassword())) {
					ModelAndView mav = new ModelAndView("redirect:/home-plg");
					redir.addFlashAttribute("modell", user);
					ses.merge(user);
					ses.getTransaction().commit();
					return mav;
				} else {
					ModelAndView mav = new ModelAndView("/login");
					return mav;
				}

			} catch(Throwable t) {
				t.printStackTrace();
			}
		} else if (modell.getRole().equals("Admin")) {
			try {
				ses.beginTransaction();

				Query<Integer> a = ses.createQuery("select id from Akun where username = :uname");
				a.setParameter("uname", modell.getUsername());
				Integer res = (Integer) a.uniqueResult();
				Akun admin = ses.get(Akun.class, res);

				if (admin.getUsername().equals(modell.getUsername())
						&& admin.getPassword().equals(modell.getPassword())) {
					ModelAndView mav = new ModelAndView("redirect:/admin/adminhome");
					redir.addFlashAttribute("modell", admin);
					ses.merge(admin);
					ses.getTransaction().commit();
					return mav;
				} else {
					ModelAndView mav = new ModelAndView("/login");
					return mav;
				}

			}  catch(Throwable t) {
				t.printStackTrace();
			}
		}
		return null;
	}

	@RequestMapping("/home-plg")
	public ModelAndView halamanPelanggan(@ModelAttribute("modell") Akun user) {
//		SessionFactory s = new Configuration().configure("hibernate.xml").addAnnotatedClass(Layanan.class)
//				.buildSessionFactory();
//		Session ses = s.getCurrentSession();
		ModelAndView mav = new ModelAndView("index");
//		try {
//			ses.beginTransaction();
//			
//			//get pelanggan
//			List<Pemesanan> daftarpesanan = ses.createQuery("from Pemesanan").list();
//			//commit transaction
//			
//			ses.getTransaction().commit();
//			
//			mav.addObject("pemesanan", daftarpesanan);
//		}
//		finally {
//			s.close();
//		}
//		
		return mav;
	}
	
	@RequestMapping("/logout")
	public ModelAndView endsession(@ModelAttribute("modell") Akun model) {
		SessionFactory s = new Configuration().configure("hibernate.xml").addAnnotatedClass(Akun.class).buildSessionFactory();
		Session ses = s.getCurrentSession();
		s.close();
		ModelAndView mav = new ModelAndView("redirect:/a");
		return mav;
	}

}