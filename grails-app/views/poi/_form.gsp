<%@ page import="tdgrails.Poi" %>



<div class="fieldcontain ${hasErrors(bean: poiInstance, field: 'nom', 'error')} required">
    <label for="nom">
        <g:message code="poi.nom.label" default="Nom"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="nom" required="" value="${poiInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: poiInstance, field: 'lieu', 'error')} ">
    <label for="lieu">
        <g:message code="poi.lieu.label" default="Lieu"/>

    </label>
    <g:textField name="lieu" value="${poiInstance?.lieu}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: poiInstance, field: 'description', 'error')} ">
    <label for="description">
        <g:message code="poi.description.label" default="Description"/>

    </label>
    <g:textField name="description" value="${poiInstance?.description}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: poiInstance, field: 'comments', 'error')} ">
    <label for="comments">
        <g:message code="poi.comments.label" default="Comments"/>

    </label>
    <g:select name="comments" from="${tdgrails.Commentaire.list().titre}" multiple="multiple" size="5"
              value="${poiInstance?.comments*.id}" class="many-to-many"/>

</div>

<div class="fieldcontain ${hasErrors(bean: poiInstance, field: 'imgs', 'error')} ">
    <label for="imgs">
        <g:message code="poi.imgs.label" default="Imgs"/>

    </label>
    <g:select name="imgs" from="${tdgrails.Image.list().name}" multiple="multiple" size="5"
              value="${poiInstance?.imgs*.id}" class="many-to-many"/>

</div>

