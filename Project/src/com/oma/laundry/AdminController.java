package com.oma.laundry;

import java.util.List;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.cfg.Configuration;
import org.springframework.context.annotation.Scope;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import model.Akun;
import model.Layanan;
import model.Pelanggan;
import model.Pemesanan;

@Controller
@Scope("session")
@RequestMapping("/admin")
public class AdminController {
	@RequestMapping("/adminhome")
	public ModelAndView halamanAdmin(@ModelAttribute("modell") Akun admin) {
//		SessionFactory s = new Configuration()
//				.configure("hibernate.xml")
//				.addAnnotatedClass(Akun.class)
//				.buildSessionFactory();
//		Session ses = s.getCurrentSession();
		ModelAndView mav = new ModelAndView("admin/homeadmin");
//		try {
//			ses.beginTransaction();
//			
//			List<Layanan> daftarlayanan = ses.createQuery("from Layanan").list();
//			//commit transaction
//			
//			ses.getTransaction().commit();
//			
//			mav.addObject("layanan", daftarlayanan);
//		}
//		finally {
//			s.close();
//		}
//		
		return mav;
	}
	
	@RequestMapping("/tambah-karyawan")
	public String halamanTambahKaryawan(Model theModel) {
		
		Pemesanan pesan = new Pemesanan();
		
		theModel.addAttribute("pemesanan", pesan);
		
		return "add-karyawan";
	}
//	@RequestMapping(name="/daftaruser-admin", method=RequestMethod.GET)
//	public ModelAndView daftaruserAdmin(@RequestParam("idadmin") int idadmin, Model model) {
//		
//		SessionFactory factory = new Configuration()
//								.configure("hibernate.xml")
//								.addAnnotatedClass(Admin.class)
//								.buildSessionFactory();
//		Session session = factory.getCurrentSession();
//		ModelAndView mav = new ModelAndView("daftaruser-admin");
//		try {
//			session.beginTransaction();
//			Admin user = session.get(Admin.class, idadmin );
//			mav.addObject("model", user);
//		}
//		finally {
//			factory.close();
//		}
//		SessionFactory s = new Configuration()
//							.configure("hibernate.xml")
//							.addAnnotatedClass(Pelanggan.class)
//							.buildSessionFactory();
//		Session ses = s.getCurrentSession();
//		try {
//			ses.beginTransaction();
//			List<Pelanggan> daftarpelanggan = ses.createQuery("from Pelanggan").list();
//			ses.getTransaction().commit();
//			mav.addObject("pelanggan", daftarpelanggan);
//		}
//		finally {
//			s.close();
//		}
//		
//		return mav;
//	}
	@RequestMapping("/layanan")
	public String showAdminLayanan() {
		return "admin/editlayanan";
	}
	@RequestMapping("/pegawai")
	public String showAdminPegawai() {
		return "admin/editpegawai";
	}
	@RequestMapping("/laporan")
	public String showAdminLaporan() {
		return "admin/";
	}
	
	//gagal ni
	@RequestMapping("/logout")
	public ModelAndView endsession(@ModelAttribute("modell") Akun model) {
		SessionFactory s = new Configuration().configure("hibernate.xml").addAnnotatedClass(Akun.class).buildSessionFactory();
//		Session ses = s.getCurrentSession();
		s.close();
		ModelAndView mav = new ModelAndView("redirect:/admin/adminhome");
		return mav;
	}
}
