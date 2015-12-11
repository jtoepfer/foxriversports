package org.sports.web.admin;

import java.util.List;

import javax.annotation.Resource;

import org.foxriversports.model.Sport;
import org.foxriversports.services.SportsService;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping(value = "/admin")
public class AdminSportsController {
	
	@Resource(name = SportsService.SERVICE_NAME)
	private SportsService sportsService;

	@RequestMapping(value = "/sports.htm*", method = RequestMethod.GET)
	public String viewSports(ModelMap model) {
		
		List<Sport> sports = sportsService.getSports();
		model.addAttribute("sports", sports);
		
		model.addAttribute("sport", new Sport());
		
		return "admin/sports";
	}
	
	@RequestMapping(value = "/addSport", /*produces = MediaType.APPLICATION_JSON_VALUE,
            consumes = MediaType.APPLICATION_JSON_VALUE,*/ method = RequestMethod.POST)
	public @ResponseBody String saveSport(@RequestBody Sport sport, ModelMap model, BindingResult result) {
		
		return HttpStatus.OK.name();
		/*return "admin/sports";*/
	}
	
	@RequestMapping(value = "/editSport.htm*", method = RequestMethod.GET)
	public @ResponseBody Sport editSport(@RequestParam(value = "code") String code, ModelMap model) {
		
		Sport sport = sportsService.getSport(code);
		
		return sport;
	}
	
	@RequestMapping(value = "/removeSport.htm*", method = RequestMethod.GET)
	public @ResponseBody HttpStatus removeSport(@RequestParam(value = "code") String code, ModelMap model) {
		
		boolean wasSportRemoved = sportsService.removeSport(code);
		
		if ( wasSportRemoved ) {
			return HttpStatus.OK;
		}
		
		return HttpStatus.NOT_IMPLEMENTED;
	}
	
}
