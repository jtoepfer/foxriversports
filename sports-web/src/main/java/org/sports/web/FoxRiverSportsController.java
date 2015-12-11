package org.sports.web;

import java.util.List;

import javax.annotation.Resource;

import org.foxriversports.model.Event;
import org.foxriversports.services.EventService;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
@RequestMapping(value = "/")
public class FoxRiverSportsController {
	
	@Resource(name = "eventService")
	private EventService eventService;

	@RequestMapping(value = "home.htm*", method = RequestMethod.GET)
	public String onStartup(ModelMap model) {

		List<Event> events = eventService.getTopLevelEvents();
		model.addAttribute("events", events);
		
		return "home";
	}

	@RequestMapping(value = "search.htm*", method = RequestMethod.POST)
	public String onSearch(@RequestParam(value = "search") String search, ModelMap model) {
		return "search";
	}
}
