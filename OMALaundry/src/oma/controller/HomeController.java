package oma.controller;

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
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import oma.dao.PelangganDAO;
import oma.dao.AdminDAO;
import oma.model.*;

@Controller
//@RequestMapping("/OMALaundry")
@SessionAttributes("model")
public class HomeController {

	@Autowired
	private PelangganDAO plgdao;
	
	@Autowired
	private AdminDAO admindao;
	
	@RequestMapping("/")
	public String mainPage() {
		return "home-page";
	}
	
	@RequestMapping("login")
	public String loginPage(Model model){
		model.addAttribute("model", new Login());
		return "loginpage";
	}
	
	@RequestMapping("/prosesLogin")
	public ModelAndView prosesLogin(@Valid @ModelAttribute("model") Login data, BindingResult bindres) {
		if(bindres.hasErrors()) {
			ModelAndView mav = new ModelAndView("loginpage");
			return mav;
		}
		else {
			if(data.getRole().equals("Pelanggan")) {
					Pelanggan user = plgdao.getPlg(data.getId());
					if(user.getPassword().equals(data.getPassword())) {
						ModelAndView mav = new ModelAndView("redirect:/plg/home-plg");
						mav.addObject("model", user);
						return mav;
					}
					else {
						ModelAndView mav = new ModelAndView("loginpage");
						return mav;
					}

			}
			else if(data.getRole().equals("Admin")){
					//get admin
					Admin user = admindao.getAdm(data.getId());
					if(user.getPassword().equals(data.getPassword())) {
						ModelAndView mav = new ModelAndView("redirect:/adm/home-adm");
						mav.addObject("model", user);
						return mav;
					}
					else {
						ModelAndView mav = new ModelAndView("loginpage");
						return mav;
					}
			}
			else {
				ModelAndView mav = new ModelAndView("loginpage");
				return mav;
			}
			
		}
	}
	
	@RequestMapping("/signup")
	public String signupPagePelanggan(Model model) {
		model.addAttribute("model", new Pelanggan());
		return "signup-page";
	}
	
	@RequestMapping("logout")
	public String logout(SessionStatus session, ModelMap model) {
		session.setComplete();
		return "redirect:/";
	}
}