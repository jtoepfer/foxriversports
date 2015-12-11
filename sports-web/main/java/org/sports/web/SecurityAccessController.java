package org.foxriversports.web;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SecurityAccessController {

	@RequestMapping(value = "/logout*", method = RequestMethod.GET)
	public String onLogout() {
		
		return "thankyou";
	}
	
	@RequestMapping(value = "/recover.htm*", method = RequestMethod.GET)
	public String onAccountRecover() {
		
		return "recovery";
	}
	
	@RequestMapping(value = "/recoveraccount.htm*", method = RequestMethod.POST)
	public String onProcessAccountRecovery() {

		return "thankyou";
	}
	
	@RequestMapping(value = "/register.htm*", method = RequestMethod.GET)
	public String onRegister() {
		return "register";
	}
}
