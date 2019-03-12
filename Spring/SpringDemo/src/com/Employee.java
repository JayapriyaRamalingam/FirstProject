package com;

public class Employee
{
	int employeeId;
	String employeeName;
	int salary;
	public int getEmployeeId() {
		return employeeId;
	}
	public void setEmployeeId(int employeeId) {
		this.employeeId = employeeId;
	}
	public String getEmployeeName() {
		return employeeName;
	}
	public void setEmployeeName(String employeeName) {
		this.employeeName = employeeName;
	}
	public int getSalary() {
		return salary;
	}
	public void setSalary(int salary) {
		this.salary = salary;
	}
	public void display()
	{
		System.out.println("Display Method:");
		System.out.println("Employee ID:"+employeeId);
		System.out.println("Employee Name:"+employeeName);
		System.out.println("Employee Salary:"+salary);
	}
}
