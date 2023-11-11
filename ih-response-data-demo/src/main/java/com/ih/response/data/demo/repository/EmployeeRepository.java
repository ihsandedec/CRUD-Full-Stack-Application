package com.ih.response.data.demo.repository;

import java.util.List;


import com.ih.response.data.demo.model.EmployeeModel;

public interface EmployeeRepository {

	EmployeeModel findById(long employee_id);

	List<EmployeeModel> findAll();

	List<EmployeeModel> findByNameContaining(String name);

	int deleteAll();
	
	int deleteById(Long id);
	
	int save(EmployeeModel employee);

	int update(EmployeeModel book);


}