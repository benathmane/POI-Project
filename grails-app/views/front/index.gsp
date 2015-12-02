<%--
  Created by IntelliJ IDEA.
  User: marwen
  Date: 02/12/15
  Time: 14:36
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
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
        <g:if test="${u.id == session.Utilisateur.id}">
            <h1>
                Changer les informations personnelles
            </h1>
            <g:form controller="front" action="modifierInfos" method="POST">
                <ol class="property-list">
                    <li class="fieldcontain">
                        <span id="nom-label" class="property-label">Nouveau nom :</span>
                        <g:textField name="nom" value="${session.Utilisateur.nom}"/>
                    </li>
                    <li class="fieldcontain">
                        <span id="prenom-label" class="property-label">Nouveau prenom :</span>
                        <g:textField name="prenom" value="${session.Utilisateur.prenom}"/>
                    </li>
                    <li class="fieldcontain">
                        <g:submitButton name="buttonmodifierInfos" value="Modifier"/>
                    </li>
                </ol>
            </g:form>
            <ol class="property-list">
                <li class="fieldcontain">
                    ${flash.messagemodifierInfos}
                </li></ol>
            <br/><br/>

            <h1>
                Changer le mot de passe
            </h1>
            <g:form controller="front" action="modifierPass" method="POST">
                <ol class="property-list">
                    <li class="fieldcontain">
                        <label>Nouveau mot de passe :</label>
                        <g:field type="password" name="mdp"/>
                    </li>

                    <li class="fieldcontain">
                        <g:submitButton name="buttonmodifierPass" value="Modifier"/>
                    </li>
                </ol>
            </g:form>
            <ol class="property-list">
                <li class="fieldcontain">
                    ${flash.messagemodifierPass}
                </li></ol>
        </g:if>

    </g:each>
</div>
</body>
</html>