package tdgrails

import grails.transaction.Transactional
import grails.web.RequestParameter


@Transactional(readOnly = true)
class FrontController {

    String listOfUtilisateurs;

    def index(@RequestParameter('id') String id) {
        //def List<Utilisateur> listOfUtilisateurs = Utilisateur.getAll()
        //[u: Utilisateur.getAll()]
        [listOfUtilisateurs: Utilisateur.findById(id)]
    }

    def show(Utilisateur utilisateurInstance) {

    }
}
