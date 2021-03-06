<%@ page import="tdgrails.GroupePois" %>
<g:if test="${!session.nom}">
    <div><a href="${createLink(action:'logout',controller:'Utilisateur')}">Veuillez vous connectez</a> </div>
</g:if>

<g:else>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'groupePois.label', default: 'GroupePois')}"/>
    <title><g:message code="default.show.label" args="[entityName]"/></title>
</head>

<body>
<a href="#show-groupePois" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                 default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/accueil')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index"><g:message code="default.list.label" args="[entityName]"/></g:link></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="show-groupePois" class="content scaffold-show" role="main">
    <h1><g:message code="default.show.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <ol class="property-list groupePois">

        <g:if test="${groupePoisInstance?.nom}">
            <li class="fieldcontain">
                <span id="nom-label" class="property-label"><g:message code="groupePois.nom.label"
                                                                       default="Nom"/></span>

                <span class="property-value" aria-labelledby="nom-label"><g:fieldValue bean="${groupePoisInstance}"
                                                                                       field="nom"/></span>

            </li>
        </g:if>

        <g:if test="${groupePoisInstance?.pois}">
            <li class="fieldcontain">
                <span id="pois-label" class="property-label"><g:message code="groupePois.pois.label"
                                                                        default="Pois"/></span>

                <g:each in="${groupePoisInstance.pois}" var="p">
                    <span class="property-value" aria-labelledby="pois-label"><g:link controller="poi" action="show"
                                                                                      id="${p.id}">${p.nom}</g:link></span>
                </g:each>

            </li>
        </g:if>

        <g:if test="${groupePoisInstance?.imgs}">
            <li class="fieldcontain">
                <span id="imgs-label" class="property-label"><g:message code="groupePois.imgs.label"
                                                                        default="Imgs"/></span>

                <g:each in="${groupePoisInstance.imgs}" var="i">
                    <span class="property-value" aria-labelledby="imgs-label"><g:link controller="image" action="show"
                                                                                      id="${i.id}">${i.name}</g:link></span>
                </g:each>

            </li>
        </g:if>

    </ol>
    <g:form url="[resource: groupePoisInstance, action: 'delete']" method="DELETE">
        <fieldset class="buttons">
            <g:link class="edit" action="edit" resource="${groupePoisInstance}"><g:message
                    code="default.button.edit.label" default="Edit"/></g:link>
            <g:actionSubmit class="delete" action="delete"
                            value="${message(code: 'default.button.delete.label', default: 'Delete')}"
                            onclick="return confirm('${message(code: 'default.button.delete.confirm.message', default: 'Are you sure?')}');"/>
        </fieldset>
    </g:form>
</div>
</body>
</html>
</g:else>