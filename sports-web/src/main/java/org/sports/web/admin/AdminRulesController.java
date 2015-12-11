package org.sports.web.admin;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value = "/admin")
public class AdminRulesController {

	@RequestMapping(value = "/rules.htm*", method = RequestMethod.GET)
	public String viewSportsRules(ModelMap model) {
		
		return "admin/rules";
	}
}
