package com.nineteen.dao.impl;

import java.util.List;

import org.springframework.orm.ibatis.support.SqlMapClientDaoSupport;

import com.nineteen.dao.EmployeeDao;
import com.nineteen.model.Employee;

//继承sqlmap...实现emplo
public class EmployeeDaoIbatisImpl extends SqlMapClientDaoSupport implements EmployeeDao{
	
	public List<Employee> findAllEmp() {
		return getSqlMapClientTemplate().queryForList("queryEmployee");
	}

	public void add(Employee emp) {
		getSqlMapClientTemplate().insert("insert",emp);
	}

	public Employee findEmpById(int id) {
		return (Employee)getSqlMapClientTemplate().queryForObject("findEmpById", id);
	}

	public void update(Employee emp) {
		getSqlMapClientTemplate().update("update", emp);
	}

	public void delete(int id) {
		getSqlMapClientTemplate().delete("delete", id);
	}
	
}
