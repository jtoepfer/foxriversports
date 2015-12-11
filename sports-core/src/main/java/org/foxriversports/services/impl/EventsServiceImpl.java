package org.foxriversports.services.impl;

import java.util.List;

import javax.annotation.Resource;

import org.foxriversports.model.Event;
import org.foxriversports.services.EventService;
import org.foxriversports.services.repository.EventsRepository;
import org.springframework.stereotype.Service;

@Service(value = EventService.SERVICE_NAME)
public class EventsServiceImpl implements EventService {

	@Resource(name = EventsRepository.REPOSITORY_NAME)
	private EventsRepository eventsRepository;

	@Override
	public List<Event> getTopLevelEvents() {
		List<Event> events = eventsRepository.getListOfTopLevelEventsForAllSports();
		return events;
	}
}
