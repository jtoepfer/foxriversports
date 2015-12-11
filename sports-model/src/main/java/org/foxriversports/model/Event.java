package org.foxriversports.model;

import java.io.Serializable;
import java.util.Date;

/**
 * This class represents an event in the system.  An event
 * is activity that may take place.
 * 
 * @author jtoepfer
 */
public class Event implements Serializable {

	private static final long serialVersionUID = -4297446196339340063L;

	private Long id;
	
	private String code;
	
	private String name;
	
	private String description;

	private Date endDate;

	private Date startDate;

	public Long getId() {
		return id;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

}
