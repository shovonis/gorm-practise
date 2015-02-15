
<%@ page import="gormpractiseproject.Individual" %>
<!DOCTYPE html>
<html>
	<head>
		<meta name="layout" content="main">
		<g:set var="entityName" value="${message(code: 'individual.label', default: 'Individual')}" />
		<title><g:message code="default.list.label" args="[entityName]" /></title>
	</head>
	<body>
		<a href="#list-individual" class="skip" tabindex="-1"><g:message code="default.link.skip.label" default="Skip to content&hellip;"/></a>
		<div class="nav" role="navigation">
			<ul>
				<li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
				<li><g:link class="create" action="create"><g:message code="default.new.label" args="[entityName]" /></g:link></li>
			</ul>
		</div>
		<div id="list-individual" class="content scaffold-list" role="main">
			<h1><g:message code="default.list.label" args="[entityName]" /></h1>
			<g:if test="${flash.message}">
				<div class="message" role="status">${flash.message}</div>
			</g:if>
			<table>
			<thead>
					<tr>
					
						<g:sortableColumn property="email" title="${message(code: 'individual.email.label', default: 'Email')}" />
					
						<th><g:message code="individual.homeAddress.label" default="Home Address" /></th>
					
						<g:sortableColumn property="name" title="${message(code: 'individual.name.label', default: 'Name')}" />
					
						<th><g:message code="individual.officeAddress.label" default="Office Address" /></th>
					
					</tr>
				</thead>
				<tbody>
				<g:each in="${individualInstanceList}" status="i" var="individualInstance">
					<tr class="${(i % 2) == 0 ? 'even' : 'odd'}">
					
						<td><g:link action="show" id="${individualInstance.id}">${fieldValue(bean: individualInstance, field: "email")}</g:link></td>
					
						<td>${fieldValue(bean: individualInstance, field: "homeAddress")}</td>
					
						<td>${fieldValue(bean: individualInstance, field: "name")}</td>
					
						<td>${fieldValue(bean: individualInstance, field: "officeAddress")}</td>
					
					</tr>
				</g:each>
				</tbody>
			</table>
			<div class="pagination">
				<g:paginate total="${individualInstanceCount ?: 0}" />
			</div>
		</div>
	</body>
</html>
