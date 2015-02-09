package com.java.spring.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.java.spring.dao.EmployeeDao;
import com.java.spring.model.Employee;
import com.java.spring.service.EmployeeService;

@Service
public class EmployeeServiceImpl implements EmployeeService {

	@Autowired
	private EmployeeDao employeeDao;

	@Transactional
	public void add(Employee emp) {

		employeeDao.add(emp);
	}

	@Transactional
	public void edit(Employee emp) {

		employeeDao.edit(emp);
	}

	@Transactional
	public void delete(int empId) {

		employeeDao.delete(empId);
	}

	@Transactional
	public Employee getEmployee(int empId) {

		return employeeDao.getEmployee(empId);
	}

	@Transactional
	public List<Employee> getAllEmployee() {
		return employeeDao.getAllEmployee();
	}

}
