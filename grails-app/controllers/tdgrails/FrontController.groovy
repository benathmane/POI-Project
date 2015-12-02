package tdgrails

import grails.transaction.Transactional


@Transactional(readOnly = true)
class FrontController {

    def index(Integer max) {
        def List<Utilisateur> listOfUtilisateurs = Utilisateur.getAll()
        render(view: "index", model: [u: listOfUtilisateurs])
    }

    def show(Utilisateur utilisateurInstance) {

    }
}
