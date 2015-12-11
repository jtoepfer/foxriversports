package org.foxriversports.services.impl;

import java.util.List;

import javax.annotation.Resource;

import org.foxriversports.model.Sport;
import org.foxriversports.services.SportsService;
import org.foxriversports.services.repository.SportsRepository;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

@Service(value = SportsService.SERVICE_NAME)
public class SportsServiceImpl implements SportsService {
	
	@Resource(name = SportsRepository.REPOSITORY_NAME)
	private SportsRepository sportsRepository;

	@Override
	public List<Sport> getSports() {
		List<Sport> sports = sportsRepository.getAllSports();
		return sports;
	}

	@Override
	public Sport getSport(String code) {
		if ( StringUtils.isEmpty(code) ) {
			return null;
		}
		Sport sport = sportsRepository.getSportByCode(code);
		return sport;
	}

	@Override
	public boolean removeSport(String code) {
		return false;
	}

}
