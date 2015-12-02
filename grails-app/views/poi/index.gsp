<%@ page import="tdgrails.Poi" %>
<!DOCTYPE html>
<html>
<head>
    <meta name="layout" content="main">
    <g:set var="entityName" value="${message(code: 'poi.label', default: 'Poi')}"/>
    <title><g:message code="default.list.label" args="[entityName]"/></title>
</head>

<body>
<a href="#list-poi" class="skip" tabindex="-1"><g:message code="default.link.skip.label"
                                                          default="Skip to content&hellip;"/></a>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/accueil')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="create" action="create"><g:message code="default.new.label"
                                                              args="[entityName]"/></g:link></li>
    </ul>
</div>

<div id="list-poi" class="content scaffold-list" role="main">
    <h1><g:message code="default.list.label" args="[entityName]"/></h1>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>
    <table>
        <thead>
        <tr>

            <g:sortableColumn property="nom" title="${message(code: 'poi.nom.label', default: 'Nom')}"/>

            <g:sortableColumn property="lieu" title="${message(code: 'poi.lieu.label', default: 'Lieu')}"/>

            <g:sortableColumn property="description"
                              title="${message(code: 'poi.description.label', default: 'Description')}"/>

        </tr>
        </thead>
        <tbody>
        <g:each in="${poiInstanceList}" status="i" var="poiInstance">
            <tr class="${(i % 2) == 0 ? 'even' : 'odd'}">

                <td><g:link action="show"
                            id="${poiInstance.id}">${fieldValue(bean: poiInstance, field: "nom")}</g:link></td>

                <td>${fieldValue(bean: poiInstance, field: "lieu")}</td>

                <td>${fieldValue(bean: poiInstance, field: "description")}</td>

            </tr>
        </g:each>
        </tbody>
    </table>

    <div class="pagination">
        <g:paginate total="${poiInstanceCount ?: 0}"/>
    </div>
</div>
</body>
</html>
