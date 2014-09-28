<%@ page import="com.company.product.Employee" %>



<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'firstName', 'error')} required">
	<label for="firstName">
		<g:message code="employee.firstName.label" default="First Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="firstName" required="" value="${employeeInstance?.firstName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'lastName', 'error')} required">
	<label for="lastName">
		<g:message code="employee.lastName.label" default="Last Name" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="lastName" required="" value="${employeeInstance?.lastName}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'dateOfBirth', 'error')} required">
	<label for="dateOfBirth">
		<g:message code="employee.dateOfBirth.label" default="Date Of Birth" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dateOfBirth" precision="day"  value="${employeeInstance?.dateOfBirth}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'hours', 'error')} required">
	<label for="hours">
		<g:message code="employee.hours.label" default="Hours" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="hours" type="number" value="${employeeInstance.hours}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'wage', 'error')} required">
	<label for="wage">
		<g:message code="employee.wage.label" default="Wage" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="wage" value="${fieldValue(bean: employeeInstance, field: 'wage')}" required=""/>

</div>

<div class="fieldcontain ${hasErrors(bean: employeeInstance, field: 'salary', 'error')} required">
	<label for="salary">
		<g:message code="employee.salary.label" default="Salary" />
		<span class="required-indicator">*</span>
	</label>
	<g:field name="salary" value="${fieldValue(bean: employeeInstance, field: 'salary')}" required=""/>

</div>

