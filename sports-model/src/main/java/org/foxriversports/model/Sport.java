package org.foxriversports.model;

import java.io.Serializable;
import java.util.Date;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Transient;

/**
 * This object represents a sport that the system should support.
 * 
 * @author jtoepfer
 */
@Entity
public class Sport implements Serializable {

	private static final long serialVersionUID = -4728615071106440915L;

	public Long sportId;
	
	private String code;
	
	private String name;
	
	private Date startDate;
	
	private Date endDate;
	
	private String description;

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	public Long getSportId() {
		return sportId;
	}

	public void setSportId(Long sportId) {
		this.sportId = sportId;
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

	public Date getStartDate() {
		return startDate;
	}

	public void setStartDate(Date startDate) {
		this.startDate = startDate;
	}

	public Date getEndDate() {
		return endDate;
	}

	public void setEndDate(Date endDate) {
		this.endDate = endDate;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	@Transient
	public Boolean isActive() {
		// TODO: check today's date against the end date/start date
		return true;
	}
	
}
