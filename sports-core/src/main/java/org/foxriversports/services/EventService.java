package org.foxriversports.services;

import java.util.List;

import org.foxriversports.model.Event;

/**
 * 
 * @author jtoepfer
 *
 */
public interface EventService {

	static final String SERVICE_NAME = "eventService";

	/**
	 * Returns the top level events for the main page
	 * in the application.
	 * @return
	 */
	List<Event> getTopLevelEvents();
}
