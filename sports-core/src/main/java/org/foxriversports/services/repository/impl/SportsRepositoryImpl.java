package org.foxriversports.services.repository.impl;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

import javax.sql.DataSource;

import org.foxriversports.model.Sport;
import org.foxriversports.services.repository.SportsRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

@Repository(value = SportsRepository.REPOSITORY_NAME)
public class SportsRepositoryImpl implements SportsRepository {

	private JdbcTemplate jdbcTemplate;
	
	@Autowired
    public void setDataSource(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

	@Override
	public List<Sport> getAllSports() {
		String sql = "select sportId, code, name, startdate, enddate, description, active from Sports";
		
		List<Sport> sports = jdbcTemplate.query(sql, new SportsRowMapper());

		return sports;
	}

	@Override
	public Sport getSportByCode(String code) {
		String sql = "select sportId, code, name, startdate, enddate, description, active, from Sports where code = ? ";

		Sport sport = jdbcTemplate.queryForObject(sql, new Object[] {code}, new SportsRowMapper());

		return sport;
	}

	/**
	 * This private class is responsible for fetching sports information.
	 * @author jtoepfer
	 */
	private static class SportsRowMapper implements RowMapper<Sport> {

		@Override
		public Sport mapRow(ResultSet rs, int rowNum) throws SQLException {
			Sport sport = new Sport();
			
			sport.setSportId(rs.getLong("sportId"));
			sport.setCode(rs.getString("code"));
			sport.setName(rs.getString("name"));
			sport.setStartDate(rs.getDate("startdate"));
			sport.setEndDate(rs.getDate("enddate"));
			sport.setDescription(rs.getString("description"));
			
			return sport;
		}
		
	}
}
