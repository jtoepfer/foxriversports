package org.foxriversports.services.impl;

import java.util.List;

import javax.annotation.Resource;

import org.foxriversports.model.Rule;
import org.foxriversports.services.RulesService;
import org.foxriversports.services.repository.RulesRepository;
import org.springframework.stereotype.Service;

@Service(value = RulesService.SERVICE_NAME)
public class RulesServiceImpl implements RulesService {
	
	@Resource(name = RulesRepository.REPOSITORY_NAME)
	private RulesRepository rulesRepository;

	public List<Rule> getRules(String sportCode) {
		return null;
	}
}
