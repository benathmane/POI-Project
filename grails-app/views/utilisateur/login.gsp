<%--
  Created by IntelliJ IDEA.
  User: BENATHMANE
  Date: 17/11/2015
  Time: 21:02
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<html>
<head>
    <title>POI Applicaton</title>
    <link rel="shortcut icon" href="${assetPath(src: 'POI.png')}" type="image/x-icon">
    <asset:stylesheet src="style.css"/>
</head>

<body>
<div id="contact">
    <h2>Authentification</h2>
    <g:if test="${flash.message}">
        <div class="message" role="status">${flash.message}</div>
    </g:if>

    <g:form id="ContactForm" controller="utilisateur" method="post" action="redirection">

        <p>
            <label>Login :</label>
            <input type='text' name='login' required/>
        </p>

        <p>
            <label>Mot de passe :</label>
            <input type='password' name='password' required/>
        </p>
        <p><label></label><input type="checkbox" name="oui" value="oui"/> Remember me</p>
        <input type='submit' name='Creation' value="Connecter"/>
    </g:form>
</div>

</body>
</html>