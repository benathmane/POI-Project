<%--
  Created by IntelliJ IDEA.
  User: BENATHMANE
  Date: 07/12/2015
  Time: 11:10
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title></title>
    <meta name="layout" content="main">
</head>

<div class="nav" role="navigation">
    <ul>
        <li><a class="home" href="${createLink(uri: '/accueil')}"><g:message code="default.home.label"/></a></li>
        <li><g:link class="list" action="index">Retour</g:link></li>
        <li><g:link class="create" action="create">Creer</g:link></li>
        <li><a href="${Epoi.id}/edit">Editer</a></li>
    </ul>
</div>
<div class="content scaffold-show" role="main">
    <g:each in="${Epoi}" var="p">
        <g:form controller="frontPoi" action="save" method="POST">
            <h1>
                Modifier les information du poi
            </h1>
            <ol class="property-list">
                <g:textField name="id" value="${Epoi.id}" hidden="hidden"/>
                <li class="fieldcontain">
                    <span id="nom-label" class="property-label">Nouveau nom :</span>
                    <g:textField name="nom" value="${Epoi.nom}"/>
                </li>

                <li class="fieldcontain">
                    <span id="lieu-label" class="property-label">Nouveau lieu :</span>
                    <g:textField name="lieu" value="${Epoi.lieu}"/>
                </li>

                <li class="fieldcontain">
                    <span id="description-label" class="property-label">Nouvelle description :</span>
                    <g:textField name="description" value="${Epoi.description}"/>
                </li>

                <li class="fieldcontain">
                    <fieldset class="buttons">
                        <g:submitButton name="buttonmodifierInfos" value="Modifier"/>
                    </fieldset>
                </li>
            </ol>
        </g:form>
        <br/><br/>
    </g:each>
</div>

<br/><br/>