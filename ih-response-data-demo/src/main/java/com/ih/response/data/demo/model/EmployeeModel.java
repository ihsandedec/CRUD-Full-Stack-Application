
package com.ih.response.data.demo.model;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;


public class EmployeeModel {
	private long employee_id;
	private String first_name;
	private String last_name;
	private String email;
	private String phone_number;
	@DateTimeFormat()
	private String hire_date;
	private String job_id;
	private int salary;
	private boolean b;

	 public EmployeeModel() {

	  }
	  
	  public EmployeeModel(long employee_id, String first_name, String last_name, String email, String phone_number, String hire_date, String job_id, int salary) {
	    this.employee_id = employee_id;
	    this.first_name = first_name;
	    this.last_name = last_name;
	    this.email = email;
	    this.phone_number = phone_number;
	    this.hire_date = hire_date;
	    this.job_id = job_id;
	    this.salary = salary;
	  }

	  public EmployeeModel(String first_name, String last_name, String email, String phone_number, String hire_date, String job_id, int salary) {
		  	this.first_name = first_name;
		    this.last_name = last_name;
		    this.email = email;
		    this.phone_number = phone_number;
		    this.hire_date = hire_date;
		    this.job_id = job_id;
		    this.salary = salary;
	  }

	public EmployeeModel(String first_name, String last_name, String email, String phone_number, String hire_date,
			String job_id, int salary, boolean b) {
		this.first_name = first_name;
	    this.last_name = last_name;
	    this.email = email;
	    this.phone_number = phone_number;
	    this.hire_date = hire_date;
	    this.job_id = job_id;
	    this.salary = salary;
	    this.b =b;
		
	}

	public boolean isB() {
		return b;
	}

	public void setB(boolean b) {
		this.b = b;
	}

	public long getEmployee_id() {
		return employee_id;
	}

	public void setEmployee_id(long employee_id) {
		this.employee_id = employee_id;
	}

	public String getFirst_name() {
		return first_name;
	}

	public void setFirst_name(String first_name) {
		this.first_name = first_name;
	}

	public String getLast_name() {
		return last_name;
	}

	public void setLast_name(String last_name) {
		this.last_name = last_name;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPhone_number() {
		return phone_number;
	}

	public void setPhone_number(String phone_number) {
		this.phone_number = phone_number;
	}

	public String getHire_date() {
		return hire_date;
	}

	public void setHire_date(String hire_date) {
		this.hire_date = hire_date;
	}

	public String getJob_id() {
		return job_id;
	}

	public void setJob_id(String job_id) {
		this.job_id = job_id;
	}

	public int getSalary() {
		return salary;
	}

	public void setSalary(int salary) {
		this.salary = salary;
	}

	@Override
	public String toString() {
		return "EmployeeModel [employee_id=" + employee_id + ", first_name=" + first_name + ", last_name=" + last_name
				+ ", email=" + email + ", phone_number=" + phone_number + ", hire_date=" + hire_date + ", job_id="
				+ job_id + ", salary=" + salary + ", b=" + b + "]";
	}
	
	public Date stringToDate(String hire_date){

	    Date result = null;
	    try{
	        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy.dd.MM");
	        result  = dateFormat.parse(hire_date);
	    }

	    catch(ParseException e){
	        e.printStackTrace();

	    }
	    return result ;
	}
	  

	

}