<%--
  Created by IntelliJ IDEA.
  User: BENATHMANE
  Date: 07/12/2015
  Time: 10:36
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
    <h1>La liste des Pois</h1>
    <table  id="t01">
        <tr>
            <td>Nom</td>
            <td>Lieu</td>
            <td>Description</td>
        </tr>
        <g:each in="${listOfPois}" var="p">
            <tr>
                <td>
                    <span class="property-value" aria-labelledby="nom-label">${p.nom}</span>
                </td>

                <td>
                    <span class="property-value" aria-labelledby="lieu-label">${p.lieu}</span>
                </td>
                <td>
                    <span class="property-value" aria-labelledby="description-label">${p.description}</span>
                </td>
            </tr>
        </g:each>
    </table>
</div>