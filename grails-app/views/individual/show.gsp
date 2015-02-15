
<%@ page import="gormpractiseproject.Individual" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'individual.label', default: 'Individual')}" />
		<title><g:message code="default.show.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#show-individual" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]" /></g:link></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="show-individual" class="content scaffold-show" role="main">
			<h1><g:message code="default.show.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
			<div class="message" role="status">${flash.message}</div>
			</g:if>
			<ol class="property-list individual">
			
				<g:if test="${individualInstance?.email}">
				<li class="fieldcontain">
					<span id="email-label" class="property-label"><g:message code="individual.email.label" default="Email" /></span>
					
						<span class="property-value" aria-labelledby="email-label"><g:fieldValue bean="${individualInstance}" field="email"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${individualInstance?.homeAddress}">
				<li class="fieldcontain">
					<span id="homeAddress-label" class="property-label"><g:message code="individual.homeAddress.label" default="Home Address" /></span>
					
						<span class="property-value" aria-labelledby="homeAddress-label"><g:link controller="individualAddress" action="show" id="${individualInstance?.homeAddress?.id}">${individualInstance?.homeAddress?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
				<g:if test="${individualInstance?.name}">
				<li class="fieldcontain">
					<span id="name-label" class="property-label"><g:message code="individual.name.label" default="Name" /></span>
					
						<span class="property-value" aria-labelledby="name-label"><g:fieldValue bean="${individualInstance}" field="name"/></span>
					
				</li>
				</g:if>
			
				<g:if test="${individualInstance?.officeAddress}">
				<li class="fieldcontain">
					<span id="officeAddress-label" class="property-label"><g:message code="individual.officeAddress.label" default="Office Address" /></span>
					
						<span class="property-value" aria-labelledby="officeAddress-label"><g:link controller="individualAddress" action="show" id="${individualInstance?.officeAddress?.id}">${individualInstance?.officeAddress?.encodeAsHTML()}</g:link></span>
					
				</li>
				</g:if>
			
			</ol>
			<g:form url="[resource:individualInstance, action:'delete']" method="DELETE">
				<fieldset class="buttons">
					<g:link class="edit" action="edit" resource="${individualInstance}"><g:message code="default.button.edit.label" default="Edit" /></g:link>
					<g:actionSubmit class="delete" action="delete" value="${message(code: 'default.button.delete.label', default: 'Delete')}" onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');" />
				</fieldset>
			</g:form>
		</div>
	</body>
</html>
