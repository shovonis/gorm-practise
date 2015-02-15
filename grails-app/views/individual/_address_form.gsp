<%@ page import="gormpractiseproject.Individual" %>

%{--This is a common template that we used both for create and update --}%
%{--in almost every places in our application. --}%
%{--The id did not match with the individual address instance --}%
%{--so data doesn't save while creating a new object.--}%

<g:hiddenField name="${prefix}.id" value="${address?.id}"/>
<g:hiddenField name="${prefix}.version" value="${address?.version}"/>

<div class="fieldcontain ${hasErrors(bean: individualInstance, field: prefix, 'error')} required">
    <label for="${prefix}">
        <g:message code="individual.address.label" default="Address"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="${prefix}.houseNo" value="${address?.houseNo}"/>
    <g:textField name="${prefix}.roadNo" value="${address?.roadNo}"/>
</div>

