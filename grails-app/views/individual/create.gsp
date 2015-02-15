<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'individual.label', default: 'Individual')}"/>
    <title><g:message code="default.create.label" args="[entityName]"/></title>
</head>

<body>
<a href="#create-individual" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                   default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="create-individual" class="content scaffold-create" role="main">
    <h1><g:message code="default.create.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <g:hasErrors bean="${individualInstance}">
        <ul class="errors" role="alert">
            <g:eachError bean="${individualInstance}" var="error">
                <li <g:if test="${error in org.springframework.validation.FieldError}">data-field-id="${error.field}"</g:if>><g:message
                        error="${error}"/></li>
            </g:eachError>
        </ul>
    </g:hasErrors>
    <g:form url="[resource: individualInstance, action: 'save']">
        <fieldset class="form">

            <div class="fieldcontain ${hasErrors(bean: individualInstance, field: 'email', 'error')} required">
                <label for="email">
                    <g:message code="individual.email.label" default="Email"/>
                    <span class="required-indicator">*</span>
                </label>
                <g:textField name="email" required="" value="${individualInstance?.email}"/>

            </div>

            <div class="fieldcontain ${hasErrors(bean: individualInstance, field: 'name', 'error')} required">
                <label for="name">
                    <g:message code="individual.name.label" default="Name"/>
                    <span class="required-indicator">*</span>
                </label>
                <g:textField name="name" required="" value="${individualInstance?.name}"/>

            </div>

            <fieldset>
                <legend>Home Address</legend>
                <g:render template="address_form"
                          model="[individualInstance: individualInstance, address: individualInstance?.homeAddress, prefix: 'homeAddress']"/>
            </fieldset>

            <fieldset>
                <legend>Office Address</legend>
                <g:render template="address_form"
                          model="[individualInstance: individualInstance, address: individualInstance?.officeAddress, prefix: 'officeAddress']"/>
            </fieldset>

        </fieldset>

        <fieldset class="buttons">
            <g:submitButton name="create" class="save"
                            value="${message(code: 'default.button.create.label', default: 'Create')}"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
