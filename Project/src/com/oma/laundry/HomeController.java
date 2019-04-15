package com.oma.laundry;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	@RequestMapping("/")
	public String showMyPage() {
		return "layanan";
	}
	@RequestMapping("/about")
	public String showAbout() {
		return "about";
	}
}
