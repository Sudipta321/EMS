package com.java.spring.model;

import java.util.ArrayList;

import javax.persistence.Column;
import javax.persistence.Embedded;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.validation.constraints.Size;

import org.hibernate.validator.constraints.Email;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.NumberFormat;

@Entity
public class Employee {

	@Id
	@Column
	@GeneratedValue(strategy=GenerationType.AUTO) //for autonumber
	private int empId;
	@Column
	@Size(min=2, max=30)
	private String empName;
	@Column
	private int expLevel;
	@Column
	private String deparment;
	@Column
	private String organization;
	@Column
	private String country;
	@Column
	private String state;
	@Column
	private String city;
	@Column
	@NumberFormat
	private long pincode;
	@Column
	@NotEmpty
	private String phone;
	@Column
	@NotEmpty @Email
	private String email;
	/*@Embedded
	@Column
	private Address empAddress;*/

	public Employee() {}






	public Employee(int empId, String empName, int expLevel, String deparment,
			String organization, String country, String state, String city,
			long pincode, String phone, String email) {
		super();
		this.empId = empId;
		this.empName = empName;
		this.expLevel = expLevel;
		this.deparment = deparment;
		this.organization = organization;
		this.country = country;
		this.state = state;
		this.city = city;
		this.pincode = pincode;
		this.phone = phone;
		this.email = email;
	}

	public int getEmpId() {
		return empId;
	}
	public void setEmpId(int empId) {
		this.empId = empId;
	}
	public String getEmpName() {
		return empName;
	}
	public void setEmpName(String empName) {
		this.empName = empName;
	}
	public int getExpLevel() {
		return expLevel;
	}
	public void setExpLevel(int expLevel) {
		this.expLevel = expLevel;
	}
	public String getDeparment() {
		return deparment;
	}
	public void setDeparment(String deparment) {
		this.deparment = deparment;
	}
	public String getOrganization() {
		return organization;
	}
	public void setOrganization(String organization) {
		this.organization = organization;
	}



/*	public Address getEmpAddress() {
		return empAddress;
	}

	public void setEmpAddress(Address empAddress) {
		this.empAddress = empAddress;
	}*/



	public String getCountry() {
		return country;
	}



	public void setCountry(String country) {
		this.country = country;
	}



	public String getState() {
		return state;
	}



	public void setState(String state) {
		this.state = state;
	}



	public String getCity() {
		return city;
	}



	public void setCity(String city) {
		this.city = city;
	}



	public long getPincode() {
		return pincode;
	}



	public void setPincode(long pincode) {
		this.pincode = pincode;
	}







	public String getPhone() {
		return phone;
	}






	public void setPhone(String phone) {
		this.phone = phone;
	}






	public String getEmail() {
		return email;
	}



	public void setEmail(String email) {
		this.email = email;
	}

}
