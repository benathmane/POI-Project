<%@ page import="tdgrails.Utilisateur" %>



<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'nom', 'error')} required">
    <label for="nom">
        <g:message code="utilisateur.nom.label" default="Nom"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="nom" required="" value="${utilisateurInstance?.nom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'prenom', 'error')} required">
    <label for="prenom">
        <g:message code="utilisateur.prenom.label" default="Prenom"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="prenom" required="" value="${utilisateurInstance?.prenom}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'mail', 'error')} required">
    <label for="mail">
        <g:message code="utilisateur.mail.label" default="Mail"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="mail" required="" value="${utilisateurInstance?.mail}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'mdp', 'error')} required">
    <label for="mdp">
        <g:message code="utilisateur.mdp.label" default="Mdp"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="mdp" required="" value="${utilisateurInstance?.mdp}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'commentaire', 'error')} ">
    <label for="commentaire">
        <g:message code="utilisateur.commentaire.label" default="Commentaire"/>

    </label>

    <ul class="one-to-many">
        <g:each in="${utilisateurInstance?.commentaire ?}" var="c">
            <li><g:link controller="commentaire" action="show" id="${c.id}">${c.titre}</g:link></li>
        </g:each>
        <li class="add">
            <g:link controller="commentaire" action="create"
                    params="['utilisateur.id': utilisateurInstance?.id]">${message(code: 'default.add.label', args: [message(code: 'commentaire.label', default: 'Commentaire')])}</g:link>
        </li>
    </ul>

</div>

<div class="fieldcontain ${hasErrors(bean: utilisateurInstance, field: 'login', 'error')} required">
    <label for="login">
        <g:message code="utilisateur.login.label" default="Login"/>
        <span class="required-indicator">*</span>
    </label>
    <g:textField name="login" required="" value="${utilisateurInstance?.login}"/>

</div>

