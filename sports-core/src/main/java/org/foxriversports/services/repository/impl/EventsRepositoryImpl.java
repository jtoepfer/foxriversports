package org.foxriversports.services.repository.impl;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.GregorianCalendar;
import java.util.List;

import javax.sql.DataSource;

import org.foxriversports.model.Event;
import org.foxriversports.services.repository.EventsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

@Repository(value = EventsRepository.REPOSITORY_NAME)
public class EventsRepositoryImpl implements EventsRepository {

	private JdbcTemplate jdbcTemplate;
	
	@Autowired
    public void setDataSource(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

	@Override
	public List<Event> getListOfTopLevelEventsForAllSports() {
		ArrayList<Event> events = new ArrayList<Event>();

		Event event = new Event();
		event.setCode("ABC");
		event.setName("Event Name");
		event.setStartDate(new GregorianCalendar(2014, Calendar.OCTOBER, 1).getTime());
		event.setEndDate(new GregorianCalendar(2014, Calendar.DECEMBER, 15).getTime());
		events.add(event);
		
		/*String sql = "";
		
		List<Event> events = jdbcTemplate.query(sql, new Object[] {}, new RowMapper<Event>() {
			public Event mapRow(ResultSet rs, int rowNum) throws SQLException {
				Event event = new Event();
				
				event.setId(rs.getLong("EVENTID"));
				
				return event;
			}
		});*/
		
		return events;
	}

}
