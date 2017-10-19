package com.nineteen.dao;

import java.util.List;

import com.nineteen.model.Employee;

public interface EmployeeDao {
	List<Employee> findAllEmp();
	void add(Employee emp);
	Employee findEmpById(int id);
	void update(Employee emp);
	void delete(int id);
}
