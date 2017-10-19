package com.nineteen.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;

import com.nineteen.dao.EmployeeDao;
import com.nineteen.model.Employee;
import com.nineteen.service.Service;

public class Service1Impl implements Service {
	
	private EmployeeDao empDao; 

	public List<Employee> findAllEmp(){
		return empDao.findAllEmp();
	}
    
	public void setEmpDao(EmployeeDao empDao) {
		this.empDao = empDao;
	}

	public void add(Employee emp) {
		empDao.add(emp);
	}

	public Employee findEmpById(int id) {
		return empDao.findEmpById(id);
	}

	public void update(Employee emp) {
		empDao.update(emp);
	}

	public void delete(int id) {
		empDao.delete(id);
	}

}
