package org.foxriversports.services.repository;

import java.util.List;

import org.foxriversports.model.Event;

public interface EventsRepository {

	static final String REPOSITORY_NAME = "eventsRepository";

	List<Event> getListOfTopLevelEventsForAllSports();
}
