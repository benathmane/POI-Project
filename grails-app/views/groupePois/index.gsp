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
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-groupePois" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                                 default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/accueil')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-groupePois" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="nom" title="${message(code: 'groupePois.nom.label', default: 'Nom')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${groupePoisInstanceList}" status="i" var="groupePoisInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${groupePoisInstance.id}">${fieldValue(bean: groupePoisInstance, field: "nom")}</g:link></td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${groupePoisInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
</g:else>