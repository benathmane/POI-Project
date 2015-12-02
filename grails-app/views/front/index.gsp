<%--
  Created by IntelliJ IDEA.
  User: marwen
  Date: 02/12/15
  Time: 14:36
--%>

<%@ page import="tdgrails.Utilisateur" %>
<head>
    <title></title>
    <meta name="layout" content="main">
</head>

<div class="content scaffold-show" role="main">
    <h1>Les informations personnelles</h1>
    <g:each in="${listOfUtilisateurs}" var="u">
        <ol class="property-list">
            <li class="fieldcontain">
                <span id="nom-label" class="property-label">Nom</span>
                <span class="property-value" aria-labelledby="nom-label">${u.nom}</span>
            </li>

            <li class="fieldcontain">
                <span id="prenom-label" class="property-label">Prenom</span>
                <span class="property-value" aria-labelledby="prenom-label">${u.prenom}</span>
            </li>
            <li class="fieldcontain">
                <span id="mail-label" class="property-label">E-mail</span>
                <span class="property-value" aria-labelledby="mail-label">${u.mail}</span>
            </li>
            <li class="fieldcontain">
                <span id="login-label" class="property-label">Login</span>
                <span class="property-value" aria-labelledby="login-label">${u.login}</span>
            </li>
        </ol>

        <h1>Mes commentaires</h1>
        <g:if test="u.commentaire">
            <ol class="property-list">
            <g:each in="${u.commentaire}" var="c">
                <g:link controller="commentaire"
                        action="show"
                        id="${c.id}">${c.titre}</g:link><br/>
            </g:each>
        </g:if>
        </ol>
        <br/><br/>
        <g:if test="${u.login == session.login}">
            <h1>Edit</h1>
            <b>Edit</b>
        </g:if>

    </g:each>
</div>
</body>
</html>