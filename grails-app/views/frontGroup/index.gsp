<%--
  Created by IntelliJ IDEA.
  User: marwen
  Date: 07/12/15
  Time: 11:00
--%>

<%@ page contentType="text/html;charset=UTF-8" %>
<%@ page import="tdgrails.Poi" %>

<head>
    <title></title>
    <meta name="layout" content="main">
    <style>
    table {
        width:100%;
    }
    table, th, td {
        border: 1px solid black;
        border-collapse: collapse;
    }
    th, td {
        padding: 5px;
        text-align: left;
    }
    table#t01 tr:nth-child(even) {
        background-color: #eee;
    }
    table#t01 tr:nth-child(odd) {
        background-color:#fff;
    }
    table#t01 th	{
        background-color: black;
        color: white;
    }
    </style>
</head>

<div class="content scaffold-show" role="main">
    <h1>La liste des Groupes</h1>
    <table  id="t01">
        <tr>
            <td>Nom</td>
            <td>Pois</td>
            <td>Images</td>
        </tr>
        <g:each in="${listOfGroups}" var="g">
            <tr>
                <td>
                    <span class="property-value" aria-labelledby="nom-label">${g.nom}</span>
                </td>

                <td>
                    <span class="property-value" aria-labelledby="lieu-label">${g.pois}</span>
                </td>
                <td>
                    <span class="property-value" aria-labelledby="description-label">${g.imgs}</span>
                </td>
            </tr>
        </g:each>
    </table>
</div>
