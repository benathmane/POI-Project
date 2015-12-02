<%@ page import="tdgrails.Commentaire" %>



<div class="fieldcontain ${hasErrors(bean: commentaireInstance, field: 'titre', 'error')} required">
	<label for="titre">
		<g:message code="commentaire.titre.label" default="Titre" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="titre" maxlength="140" required="" value="${commentaireInstance?.titre}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentaireInstance, field: 'texte', 'error')} ">
	<label for="texte">
		<g:message code="commentaire.texte.label" default="Texte" />
		
	</label>
	<g:textField name="texte" value="${commentaireInstance?.texte}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentaireInstance, field: 'note', 'error')} ">
	<label for="note">
		<g:message code="commentaire.note.label" default="Note" />
		
	</label>
	<g:field name="note" type="number" min="0" max="20" value="${commentaireInstance.note}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: commentaireInstance, field: 'utilisateur', 'error')} ">
	<label for="utilisateur">
		<g:message code="commentaire.utilisateur.label" default="Utilisateur"  />

	</label>
	<g:select id="utilisateur" name="utilisateur.id" from="${tdgrails.Utilisateur.list().login}" value="${commentaireInstance?.utilisateur?.id}" class="many-to-one" noSelection="['null': '']"/>

</div>

