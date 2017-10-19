package com.nineteen.controller;

import java.util.Date;
import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import com.nineteen.model.Employee;
import com.nineteen.service.Service;

@Controller
public class MyController {
	//Spring会向加了注解的setter方法传递bean名为“serviceDao”的Spring管理对象的引用。
	@Resource(name="serviceDao")
	private Service serviceDao;
	private int id = 10;
	private Employee findEmpById;
	@RequestMapping(value="/index",method=RequestMethod.GET)
	public ModelAndView listAllEmp(){
		//调用service层
		//所有员工的信息
		List<Employee> emps = serviceDao.findAllEmp();
		
		for (Employee employee : emps) {
			System.out.println(employee);
		}
		
		ModelAndView mav = new ModelAndView("emp_list");
		mav.addObject("emps",emps);
		return mav;
	}
	@RequestMapping(value="/toAdd",method=RequestMethod.GET)
	public ModelAndView toAdd(){
		ModelAndView mav = new ModelAndView("emp_add");
		return mav;
	}
	@RequestMapping(value="/addEmp",method=RequestMethod.POST)
	public String addEmp(Employee emp){
		id += id;
		emp.setId(id);
		emp.setHireDate(new Date());
		serviceDao.add(emp);
		return "redirect:/index.do";
	}
	@RequestMapping(value="/toUpdate",method=RequestMethod.GET)
	public ModelAndView toUpdate(String sid){
		ModelAndView mav = new ModelAndView("emp_edit");
		
		Employee emp = serviceDao.findEmpById(Integer.parseInt(sid));
		mav.addObject("emp", emp);
		return mav;
	}
	@RequestMapping(value="/editEmp",method=RequestMethod.POST)
	public String edit(Employee emp){
		serviceDao.update(emp);
		return "redirect:/index.do";
	}
	@RequestMapping(value="/delete",method=RequestMethod.GET)
	public String delete(String sid){
		serviceDao.delete(Integer.parseInt(sid));
		return "redirect:/index.do";
	}
}
