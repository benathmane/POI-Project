<%--
  Created by IntelliJ IDEA.
  User: marwen
  Date: 07/12/15
  Time: 12:15
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
        <li><g:link class="edit" action="edit">Editer</g:link></li>
    </ul>
</div>

<div class="content scaffold-show" role="main">
    <h1>Informations Poi</h1>
    <g:each in="${GroupePois}" var="g">
        <ol class="property-list">
            <li class="fieldcontain">
                <span id="nom-label" class="property-label">Nom</span>
                <span class="property-value" aria-labelledby="nom-label">${g.nom}</span>
            </li>
        </ol>

        <h1>Liste des Pois</h1>
        <g:if test="g.pois">
            <ol class="property-list">
            <g:each in="${g.pois}" var="p">
                <g:link controller="poi"
                        action="show"
                        id="${p.id}">${p.nom}</g:link><br/>
            </g:each>
        </g:if>

        <h1>Liste des images</h1>
        <g:if test="g.imgs">
            <ol class="property-list">
            <g:each in="${g.imgs}" var="i">
                <g:link controller="image"
                        action="show"
                        id="${i.id}">${i.name}</g:link><br/>
            </g:each>
        </g:if>
        </ol>
        <br/><br/>
    </g:each>

</html>