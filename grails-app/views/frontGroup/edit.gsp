<%--
  Created by IntelliJ IDEA.
  User: marwen
  Date: 07/12/15
  Time: 12:31
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<head>
    <title></title>
    <meta name="layout" content="main">
</head>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/accueil')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index">Retour</g:link></li>
        <li><g:link class="create" action="create">Creer</g:link></li>
        <li><a href="${EgroupePois.id}/edit">Editer</a></li>
    </ul>
</div>

<div class="content scaffold-show" role="main">
    <h1>
        Modifier Groupe
    </h1>
    <g:each in="${EgroupePois}" var="g">
        <g:form controller="frontGroup" action="save" method="POST">
            <h1>
                Modifier les information du groupe
            </h1>
            <g:textField name="id" value="${EgroupePois.id}" hidden="hidden"/>
            <ol class="property-list">
                <li class="fieldcontain">
                    <span id="nom-label" class="property-label">Nouveau nom :</span>
                    <g:textField name="nom" value="${EgroupePois.nom}"/>
                </li>

                <li class="fieldcontain">
                    <fieldset class="buttons">
                        <g:submitButton name="buttonmodifierInfos" value="Modifier"/>
                    </fieldset>
                </li>
            </ol>
        </g:form>
    </g:each>
</div>
<br/><br/>