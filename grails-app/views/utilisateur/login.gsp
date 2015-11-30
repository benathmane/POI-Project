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
    <style>
    * {
        margin: 0;
        padding: 0;
    }

    body {
        background-color: #fff;
        font-family: Georgia, serif;
        font-size: 20px;
        font-style: italic;
        font-weight: normal;
        letter-spacing: normal;
        line-height: 1.4em;
        background: transparent url('${resource(dir: "images", file: "paperbg.jpg")}') repeat bottom center;

    }

    #contact {
        background: transparent url('${resource(dir: "images", file: "formbg.png")}') no-repeat bottom center;
        width: 680px;
        height: 540px;
        margin: 20px auto 0px auto;
    }

    #contact h1 {
        color: #e73c00;
        text-shadow: 2px 1px 2px #f9f9f9;
        margin-left: 10px;
    }

    #contact form {
        width: 680px;
        height: 460px;
        margin: 0px auto;
        padding: 40px 0px 0px 0px;
        clear: both;
    }

    #contact p {
        width: 100%;
        float: left;
        clear: both;
        position: relative;
        padding: 5px 0px;
    }

    #contact label {
        float: left;
        width: 210px;
        text-align: right;
        margin: 10px 0px 5px 0px;
        padding-right: 10px;
        text-shadow: 1px 1px 1px #f0f0f0;
        line-height: 20px;
    }

    #contact input[type="text"],
    #contact input[type="password"] {
        float: left;
        margin: 5px 0px 5px 0px;
        font-family: Georgia, serif;
        font-size: 16px;
        font-style: italic;
        font-weight: normal;
        letter-spacing: normal;
        padding: 4px 4px 6px 4px;
        width: 398px;
        border: 1px solid #ddd;
        font-weight: bold;
        color: #e73c00;;
        text-shadow: -1px 1px 1px #aaa;
        -moz-border-radius: 5px;
        -webkit-border-radius: 5px;
        border-radius: 5px;
        -moz-box-shadow: 1px 1px 3px #000;
        -webkit-box-shadow: 1px 1px 3px #000;
        box-shadow: 1px 1px 3px #000;
    }

    input:valid {
        background-color: lightgreen;
    }

    #contact input[type="submit"] {
        background: transparent url('${resource(dir: "images", file: "submit.png")}') no-repeat bottom center;
        width: 177px;
        height: 83px;
        cursor: pointer;
        color: #e73c00;
        float: right;
        border: none;
        font-family: Georgia, serif;
        font-weight: bold;
        font-size: 26px;
        padding-left: 15px;
        cursor: pointer;
        margin: 5px -10px 0px 0px;
        text-shadow: 1px 1px 1px #000;
    }

    #contact input[type="submit"]:hover {
        color: #fff;
    }

    #contact p.submit {
        height: 40px;
    }
    </style>
</head>

<body>
<div id="contact">
    <h2>Autentification</h2>

    <g:form id="ContactForm" controller="utilisateur" method="post" action="redirection">

        <p>
            <label>Login :</label>
            <input type='text' name='login' required/>
        </p>

        <p>
            <label>Mot de passe :</label>
            <input type='password' name='password' required/>
        </p>
        <input type='submit' name='Creation' value="Connecter"/>
    </g:form>
</div>

</body>
</html>