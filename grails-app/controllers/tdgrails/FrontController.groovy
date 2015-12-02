package tdgrails

import grails.transaction.Transactional


@Transactional(readOnly = true)
class FrontController {

    String listOfUtilisateurs;

    def index() {
        //def List<Utilisateur> listOfUtilisateurs = Utilisateur.getAll()
        //[u: Utilisateur.getAll()]
        [listOfUtilisateurs: Utilisateur.getAll()]
    }

    def show(Utilisateur utilisateurInstance) {

    }
}
