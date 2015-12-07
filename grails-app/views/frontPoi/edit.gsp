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
    <h1>
        Modifier le POI
    </h1>
    <g:each in="${Epoi}" var="p">
        <g:form controller="frontPoi" action="save" method="POST">

        </g:form>
        <br/><br/>
    </g:each>
</div>