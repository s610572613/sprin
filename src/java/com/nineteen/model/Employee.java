package com.nineteen.model;

import java.io.Serializable;
import java.util.Date;

public class Employee implements Serializable{
	private static final long serialVersionUID = 1L;
	private int id;
	private String name;
	private Date hireDate;
	private double sal;
	private String interest;
	public String getInterest() {
		return interest;
	}
	public void setInterest(String interest) {
		this.interest = interest;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Date getHireDate() {
		return hireDate;
	}
	public void setHireDate(Date hireDate) {
		this.hireDate = hireDate;
	}
	public double getSal() {
		return sal;
	}
	public void setSal(double sal) {
		this.sal = sal;
	}
	@Override
	public String toString() {
		return "Employee [hireDate=" + hireDate + ", id=" + id + ", name="
				+ name + ", sal=" + sal + "]";
	}
}
