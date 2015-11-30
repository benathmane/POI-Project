<%@ page import="tdgrails.Image" %>



<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'name', 'error')} required">
    <label for="name">
        <g:message code="image.name.label" default="Name"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="name" required="" value="${imageInstance?.name}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: imageInstance, field: 'path', 'error')} required">
    <label for="path">
        <g:message code="image.path.label" default="Path"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="path" required="" value="${imageInstance?.path}"/>

</div>

