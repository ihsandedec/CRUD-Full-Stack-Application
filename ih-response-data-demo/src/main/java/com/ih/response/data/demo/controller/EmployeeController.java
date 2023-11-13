package com.ih.response.data.demo.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;
import com.ih.response.data.demo.model.EmployeeModel;
import com.ih.response.data.demo.repository.EmployeeRepository;



@CrossOrigin(origins = "http://localhost:3000")
@RestController
@RequestMapping(value = "/api",  method = {RequestMethod.GET })
public class EmployeeController {
	
	@Autowired
	EmployeeRepository employeesRepository;
	
	@GetMapping("/employeeAll")
	public List<EmployeeModel> getAllEmployees(){
		return employeesRepository.findAll();
	}
	
	@PostMapping("/createEmployee")
	public int save(EmployeeModel employee) {
		return employeesRepository.save(employee);
	}
	

	
	 @PostMapping(path="/getEmployeeById", consumes=MediaType.APPLICATION_JSON_VALUE)
	  public ResponseEntity<EmployeeModel> getEmployeeById(@RequestBody EmployeeModel id) {
		 EmployeeModel employee = null;
		 employee = employeesRepository.findById(id.getEmployee_id());
	    if (employee != null) {
	      return new ResponseEntity<>(employee, HttpStatus.OK);
	    } else {
	      return new ResponseEntity<>(HttpStatus.NOT_FOUND);
	    }
	  }
	 
	 @PostMapping("/getEmployeeByName")
	  public @ResponseBody ResponseEntity<List<EmployeeModel>> getEmployeeByName(@RequestBody EmployeeModel request) {
	    try {
	      List<EmployeeModel> employeeList = new ArrayList<EmployeeModel>();
	      if (request.getFirst_name() == null)
	    	  employeesRepository.findAll().forEach(employeeList::add);
	      else
	        employeesRepository.findByNameContaining(request.getFirst_name()).forEach(employeeList::add);
	      if (employeeList.isEmpty()) {
	        return new ResponseEntity<>(HttpStatus.NO_CONTENT);
	      }
	      return new ResponseEntity<>(employeeList, HttpStatus.OK);
	    } catch (Exception e) {
	      return new ResponseEntity<>(null, HttpStatus.INTERNAL_SERVER_ERROR);
	    }
	  }
	 
	 @GetMapping("/employee/{id}")
	  public ResponseEntity<EmployeeModel> getEmployeeById(@PathVariable("id") long id) {
		 EmployeeModel employee = employeesRepository.findById(id);

	    if (employee != null) {
	      return new ResponseEntity<>(employee, HttpStatus.OK);
	    } else {
	      return new ResponseEntity<>(HttpStatus.NOT_FOUND);
	    }
	  }
	 
	 @PutMapping("/employee/{id}")
	  public ResponseEntity<String> updateEmployee(@PathVariable("id") long id, @RequestBody EmployeeModel employee) {
		 EmployeeModel _employee = employeesRepository.findById(id);

	    if (_employee != null) {
	    	_employee.setEmployee_id(id);	
	    	_employee.setFirst_name(employee.getFirst_name());
	    	_employee.setLast_name(employee.getLast_name());
	    	_employee.setEmail(employee.getEmail());
	    	_employee.setPhone_number(employee.getPhone_number());
	    	_employee.setHire_date(employee.getHire_date());
	    	_employee.setJob_id(employee.getJob_id());
	    	_employee.setSalary(employee.getSalary());
	    	_employee.setB(employee.isB());

	      employeesRepository.update(_employee);
	      return new ResponseEntity<>("Tutorial was updated successfully.", HttpStatus.OK);
	    } else {
	      return new ResponseEntity<>("Cannot find Tutorial with id=" + id, HttpStatus.NOT_FOUND);
	    }
	  }
	 
	 @DeleteMapping("/employees/{id}")
	  public ResponseEntity<String> deleteEmployee(@PathVariable("id") long id) {
	    try {
	      int result = employeesRepository.deleteById(id);
	      if (result == 0) {
	        return new ResponseEntity<>("Cannot find Tutorial with id=" + id, HttpStatus.OK);
	      }
	      return new ResponseEntity<>("Tutorial was deleted successfully.", HttpStatus.OK);
	    } catch (Exception e) {
	      return new ResponseEntity<>("Cannot delete tutorial.", HttpStatus.INTERNAL_SERVER_ERROR);
	    }
	  }
	 
}