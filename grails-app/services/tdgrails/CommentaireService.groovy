package tdgrails

import grails.transaction.Transactional

@Transactional
class CommentaireService {

    def serviceMethod() {

    }

    CommentaireService commentaireService

    Commentaire createCommentaire(params) {
        Commentaire newCommentaire = new Commentaire(
                titre: params.titre,
                texte: params.texte,
                note: params.note,
                utilisateur: params.utilisateur)
        newCommentaire.save(failOnError: true)
        return newCommentaire
    }
}
