<%@ page import="tdgrails.Poi" %>

<g:if test="${!session.nom}">
    <div><a href="${createLink(action:'logout',controller:'Utilisateur')}">Veuillez vous connectez</a> </div>
</g:if>

<g:else>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'poi.label', default: 'Poi')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-poi" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                          default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/accueil')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-poi" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list poi">

        <g:if test="${poiInstance?.nom}">
            <li class="fieldcontain">
                <span id="nom-label" class="property-label"><g:message code="poi.nom.label" default="Nom"/></span>

                <span class="property-value" aria-labelledby="nom-label"><g:fieldValue bean="${poiInstance}"
                                                                                       field="nom"/></span>

            </li>
        </g:if>

        <g:if test="${poiInstance?.lieu}">
            <li class="fieldcontain">
                <span id="lieu-label" class="property-label"><g:message code="poi.lieu.label" default="Lieu"/></span>

                <span class="property-value" aria-labelledby="lieu-label"><g:fieldValue bean="${poiInstance}"
                                                                                        field="lieu"/></span>

            </li>
        </g:if>

        <g:if test="${poiInstance?.description}">
            <li class="fieldcontain">
                <span id="description-label" class="property-label"><g:message code="poi.description.label"
                                                                               default="Description"/></span>

                <span class="property-value" aria-labelledby="description-label"><g:fieldValue bean="${poiInstance}"
                                                                                               field="description"/></span>

            </li>
        </g:if>

        <g:if test="${poiInstance?.comments}">
            <li class="fieldcontain">
                <span id="comments-label" class="property-label"><g:message code="poi.comments.label"
                                                                            default="Comments"/></span>

                <g:each in="${poiInstance.comments}" var="c">
                    <span class="property-value" aria-labelledby="comments-label"><g:link controller="commentaire"
                                                                                          action="show"
                                                                                          id="${c.id}">${c.titre}</g:link></span>
                </g:each>

            </li>
        </g:if>

        <g:if test="${poiInstance?.imgs}">
            <li class="fieldcontain">
                <span id="imgs-label" class="property-label"><g:message code="poi.imgs.label" default="Imgs"/></span>

                <g:each in="${poiInstance.imgs}" var="i">
                    <span class="property-value" aria-labelledby="imgs-label"><g:link controller="image" action="show"
                                                                                      id="${i.id}">${i?.name}</g:link></span>
                </g:each>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: poiInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${poiInstance}"><g:message code="default.button.edit.label"
                                                                                    default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
</g:else>