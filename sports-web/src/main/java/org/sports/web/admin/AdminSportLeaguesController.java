package org.sports.web.admin;

import java.util.List;

import javax.annotation.Resource;

import org.foxriversports.model.League;
import org.foxriversports.services.LeagueService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/admin")
public class AdminSportLeaguesController {
	
	@Resource(name = LeagueService.SERVICE_NAME)
	private LeagueService leagueService;

	@RequestMapping(value = "/leagues.htm?code={code}", method = RequestMethod.GET)
	public String viewLeagues(@RequestParam String code, ModelMap model) {
		
		List<League> leagues = leagueService.getLeagues(code);
		model.addAttribute("leagues", leagues);
		
		return "admin/leagues";
	}

}
