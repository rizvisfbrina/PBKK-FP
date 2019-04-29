package com.oma.laundry;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class AdminController {
	@RequestMapping("/adminhome")
	public String showAdminPage() {
		return "admin/homeadmin";
	}
}
