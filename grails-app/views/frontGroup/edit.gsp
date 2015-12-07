<%--
  Created by IntelliJ IDEA.
  User: marwen
  Date: 07/12/15
  Time: 12:31
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
    <h1>
        Modifier Groupe
    </h1>
    <g:each in="${GroupePois}" var="g">
        <g:form controller="frontGroup" action="save" method="POST">
        </g:form>
        <br/><br/>
    </g:each>
</div>
</html>