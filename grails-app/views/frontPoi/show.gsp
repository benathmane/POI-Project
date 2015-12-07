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
        <li><a href="${Poi.id}/edit">Editer</a></li>
    </ul>
</div>
<div class="content scaffold-show" role="main">
    <h1>Informations Poi</h1>
    <g:each in="${Poi}" var="p">
        <ol class="property-list">
            <li class="fieldcontain">
                <span id="nom-label" class="property-label">Nom</span>
                <span class="property-value" aria-labelledby="nom-label">${p.nom}</span>
            </li>

            <li class="fieldcontain">
                <span id="lieu-label" class="property-label">Lieu</span>
                <span class="property-value" aria-labelledby="lieu-label">${p.lieu}</span>
            </li>
            <li class="fieldcontain">
                <span id="description-label" class="property-label">Description</span>
                <span class="property-value" aria-labelledby="description-label">${p.description}</span>
            </li>
        </ol>

        <h1>Liste des commentaires</h1>
        <g:if test="p.comments">
            <ol class="property-list">
            <g:each in="${p.comments}" var="c">
                <g:link controller="commentaire"
                        action="show"
                        id="${c.id}">${c.titre}</g:link><br/>
            </g:each>
        </g:if>
        </ol>
        <br/><br/>
    </g:each>
</div>