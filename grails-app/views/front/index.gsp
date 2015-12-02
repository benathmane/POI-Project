<%--
  Created by IntelliJ IDEA.
  User: marwen
  Date: 02/12/15
  Time: 14:36
--%>

<%@ page import="tdgrails.Utilisateur" %>
<html>
<head>
    <title></title>
</head>

<body>
<g:each in="${listOfUtilisateurs}" var="u">
    <li>${u.nom}</li>
    <li>${u.prenom}</li>
    <li>${u.login}</li>
    <li>${u.mail}</li>
    <br/>
</g:each>
</body>
</html>