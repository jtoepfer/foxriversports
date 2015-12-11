package org.foxriversports.model;

import java.io.Serializable;
import java.util.List;

/**
 * 
 * @author jtoepfer
 */
public class Rule implements Serializable {

	private static final long serialVersionUID = -8739888168685152585L;

	private Long ruleId;
	
	private String name;
	
	private String description;
	
	private Section section;
	
	private List<Rule> rules;

	public Long getRuleId() {
		return ruleId;
	}

	public void setRuleId(Long ruleId) {
		this.ruleId = ruleId;
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

	public List<Rule> getRules() {
		return rules;
	}

	public void setRules(List<Rule> rules) {
		this.rules = rules;
	}

}
