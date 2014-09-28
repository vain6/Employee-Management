package com.company.product

class Employee {
	String firstName
	String lastName
	Date dateOfBirth
	int hours
	double wage
	double salary

    static constraints = {
		firstName (blank: false)
		lastName (blank: false)
    }
}
