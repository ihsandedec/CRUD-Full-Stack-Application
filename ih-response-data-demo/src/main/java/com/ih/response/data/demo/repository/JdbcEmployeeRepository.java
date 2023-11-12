package com.ih.response.data.demo.repository;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.IncorrectResultSizeDataAccessException;
import org.springframework.jdbc.core.BeanPropertyRowMapper;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;
import com.ih.response.data.demo.model.EmployeeModel;

@Repository
public class JdbcEmployeeRepository implements EmployeeRepository {
	
	@Autowired
	private JdbcTemplate jdbcTemplate;
	
	@Override
	public EmployeeModel findById(long id) {
		try {
		      EmployeeModel employee = jdbcTemplate.queryForObject("SELECT * FROM EMPLOYEES WHERE employee_id=?",
		          BeanPropertyRowMapper.newInstance(EmployeeModel.class), id);
		      return employee;
		    } catch (IncorrectResultSizeDataAccessException e) {
		      return null;
		    }
	}
	
	@Override
	 public List<EmployeeModel> findAll() {
		return jdbcTemplate.query("SELECT * from EMPLOYEES", BeanPropertyRowMapper.newInstance(EmployeeModel.class));
		
	}
	
	@Override
	 public List<EmployeeModel> findByNameContaining(String name) {
		String q = "SELECT * from EMPLOYEES WHERE first_name LIKE '%" +name+ "%'";
	    return jdbcTemplate.query(q, BeanPropertyRowMapper.newInstance(EmployeeModel.class));
	}
	
	@Override
	 public int deleteAll() {
		 return jdbcTemplate.update("DELETE from EMPLOYEES");
	}

	@Override
	public int save(EmployeeModel employee) {
		return jdbcTemplate.update("INSERT INTO EMPLOYEES (employee_id, first_name, last_name, email, phone_number, hire_date, job_id, salary) VALUES(?,?,?,?,?,?,?,?)",
		        new Object[] {employee.getEmployee_id() ,employee.getFirst_name(), employee.getLast_name(), employee.getEmail(), employee.getPhone_number(), employee.getHire_date(), employee.getJob_id(), employee.getSalary() });
	}

	@Override
	public int update(EmployeeModel employee) {
		return jdbcTemplate.update("UPDATE EMPLOYEES SET first_name=?, last_name=?, email=?, phone_number=?, hire_date=?, job_id=?, salary=? WHERE employee_id=?",
		        new Object[] { employee.getFirst_name(), employee.getLast_name(), employee.getEmail(), employee.getPhone_number(), employee.getHire_date(), employee.getJob_id(), employee.getSalary(), employee.getEmployee_id() });
	}
	
	 @Override
	  public int deleteById(Long id) {
	    return jdbcTemplate.update("DELETE FROM EMPLOYEES WHERE id=?", id);
	  }
	
	


}