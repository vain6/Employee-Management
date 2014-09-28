
<%@ page import="com.company.product.Employee" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'employee.label', default: 'Employee')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-employee" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-employee" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list employee">
			
				<g:if test="${employeeInstance?.firstName}">
				<li class="fieldcontain">
					<span id="firstName-label" class="property-label"><g:message code="employee.firstName.label" default="First Name" /></span>
					
						<span class="property-value" aria-labelledby="firstName-label"><g:fieldValue bean="${employeeInstance}" field="firstName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.lastName}">
				<li class="fieldcontain">
					<span id="lastName-label" class="property-label"><g:message code="employee.lastName.label" default="Last Name" /></span>
					
						<span class="property-value" aria-labelledby="lastName-label"><g:fieldValue bean="${employeeInstance}" field="lastName"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.dateOfBirth}">
				<li class="fieldcontain">
					<span id="dateOfBirth-label" class="property-label"><g:message code="employee.dateOfBirth.label" default="Date Of Birth" /></span>
					
						<span class="property-value" aria-labelledby="dateOfBirth-label"><g:formatDate date="${employeeInstance?.dateOfBirth}" /></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.hours}">
				<li class="fieldcontain">
					<span id="hours-label" class="property-label"><g:message code="employee.hours.label" default="Hours" /></span>
					
						<span class="property-value" aria-labelledby="hours-label"><g:fieldValue bean="${employeeInstance}" field="hours"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.wage}">
				<li class="fieldcontain">
					<span id="wage-label" class="property-label"><g:message code="employee.wage.label" default="Wage" /></span>
					
						<span class="property-value" aria-labelledby="wage-label"><g:fieldValue bean="${employeeInstance}" field="wage"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${employeeInstance?.salary}">
				<li class="fieldcontain">
					<span id="salary-label" class="property-label"><g:message code="employee.salary.label" default="Salary" /></span>
					
						<span class="property-value" aria-labelledby="salary-label"><g:fieldValue bean="${employeeInstance}" field="salary"/></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:employeeInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${employeeInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
