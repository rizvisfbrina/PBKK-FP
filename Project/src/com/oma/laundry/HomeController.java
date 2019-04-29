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
	@RequestMapping(value = {"/a","/"})
	public String showMyPage() {
		return "index";
	}
	@RequestMapping("/login")
	public String loginPage(Model model){
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
	public ModelAndView daftarPelanggan(@Valid @ModelAttribute("model") Pelanggan model, BindingResult bindres, RedirectAttributes redir) {
		SessionFactory s = new Configuration()
				.configure("hibernate.xml")
				.addAnnotatedClass(Pelanggan.class)
				.buildSessionFactory();
		Session ses = s.getCurrentSession();
		
		if(bindres.hasErrors()) {
			ModelAndView mav = new ModelAndView("signup");
			return mav;
		}
		else {
			try {
				ses.beginTransaction();
				ses.save(model);
				ses.getTransaction().commit();
			}
			finally {
				s.close();
			}
			ModelAndView mav = new ModelAndView("redirect:/home-plg");
			redir.addFlashAttribute("model", model);
			return mav;
		}
	}
	@RequestMapping("/prosesLogin")
	public ModelAndView prosesLogin(@Valid @ModelAttribute("model") Akun model, BindingResult bindres, RedirectAttributes redir){
		if(bindres.hasErrors()) {
			ModelAndView mav = new ModelAndView("/login");
			return mav;
		}
		else {
			if(model.getRole().equals("Pelanggan")) {
				SessionFactory s = new Configuration()
						.configure("hibernate.xml")
						.addAnnotatedClass(Akun.class)
						.buildSessionFactory();
				Session ses = s.getCurrentSession();
				try {
					ses.beginTransaction();
					
					//get pelanggan
					Query<Integer> a = ses.createQuery("select id from Akun where username = :uname");
					a.setParameter("uname", model.getUsername());
					Integer res = (Integer)a.uniqueResult();
					Akun user = ses.get(Akun.class, res);
					
					System.out.println("halo");
					if(user.getUsername().equals(model.getUsername()) && user.getPassword().equals(model.getPassword())) {
						System.out.println("halo22");
						ModelAndView mav = new ModelAndView("redirect:/");
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
			else if(model.getRole().equals("Admin")){
				SessionFactory s = new Configuration()
						.configure("hibernate.xml")
						.addAnnotatedClass(Akun.class)
						.buildSessionFactory();
				Session ses = s.getCurrentSession();
				try {
					ses.beginTransaction();
					
					//get admin
					Query<Integer> a = ses.createQuery("select id from Akun where username = :uname");
					a.setParameter("uname", model.getUsername());
					Integer res = (Integer)a.uniqueResult();
					Akun adm = ses.get(Akun.class, res);
					
					if(adm.getUsername().equals(model.getUsername()) && adm.getPassword().equals(model.getPassword())) {
						ModelAndView mav = new ModelAndView("redirect:/admin/home");
						redir.addFlashAttribute("model", adm);
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
			
		}
		return null;
	}
	@RequestMapping("/home-admin")
	public ModelAndView halamanAdmin(@ModelAttribute("model") Admin admin, Model model) {
		SessionFactory s = new Configuration()
				.configure("hibernate.xml")
				.addAnnotatedClass(Admin.class)
				.buildSessionFactory();
		Session ses = s.getCurrentSession();
		ModelAndView mav = new ModelAndView("logged-admin");
		try {
			ses.beginTransaction();
			
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
	@RequestMapping(name="/daftaruser-admin", method=RequestMethod.GET)
	public ModelAndView daftaruserAdmin(@RequestParam("id") String id_admin, Model model) {
		
		SessionFactory factory = new Configuration()
								.configure("hibernate.xml")
								.addAnnotatedClass(Admin.class)
								.buildSessionFactory();
		Session session = factory.getCurrentSession();
		ModelAndView mav = new ModelAndView("daftaruser-admin");
		try {
			session.beginTransaction();
			Admin user = session.get(Admin.class, id_admin );
			mav.addObject("model", user);
		}
		finally {
			factory.close();
		}
		//buat ngambil mahasiswa
		SessionFactory s = new Configuration()
							.configure("hibernate.xml")
							.addAnnotatedClass(Pelanggan.class)
							.buildSessionFactory();
		Session ses = s.getCurrentSession();
		try {
			ses.beginTransaction();
			List<Pelanggan> daftarpelanggan = ses.createQuery("from Pelanggan").list();
			ses.getTransaction().commit();
			mav.addObject("pelanggan", daftarpelanggan);
		}
		finally {
			s.close();
		}
		
		return mav;
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
			List<Pemesanan> daftarpesanan = ses.createQuery("from Pemesanan").list();
			//commit transaction
			
			ses.getTransaction().commit();
			
			mav.addObject("pemesanan", daftarpesanan);
		}
		finally {
			s.close();
		}
		
		return mav;
	}
	@RequestMapping("/tambah-karyawan")
	public String halamanTambahKaryawan(Model theModel) {
		
		Pemesanan pesan = new Pemesanan();
		
		theModel.addAttribute("pemesanan", pesan);
		
		return "add-karyawan";
	}
}