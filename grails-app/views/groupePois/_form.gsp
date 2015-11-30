<%@ page import="tdgrails.GroupePois" %>



<div class="fieldcontain ${hasErrors(bean: groupePoisInstance, field: 'pois', 'error')} ">
    <label for="pois">
        <g:message code="groupePois.pois.label" default="Pois"/>

    </label>
    <g:select name="pois" from="${tdgrails.Poi.list()}" multiple="multiple" optionKey="id" size="5"
              value="${groupePoisInstance?.pois*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: groupePoisInstance, field: 'imgs', 'error')} ">
    <label for="imgs">
        <g:message code="groupePois.imgs.label" default="Imgs"/>

    </label>
    <g:select name="imgs" from="${tdgrails.Image.list()}" multiple="multiple" optionKey="id" size="5"
              value="${groupePoisInstance?.imgs*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: groupePoisInstance, field: 'nom', 'error')} required">
    <label for="nom">
        <g:message code="groupePois.nom.label" default="Nom"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="nom" required="" value="${groupePoisInstance?.nom}"/>

</div>

