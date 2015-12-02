package tdgrails

import grails.transaction.Transactional
import grails.web.RequestParameter



@Transactional(readOnly = false)
class FrontController {

    String listOfUtilisateurs;
    Cryptage cryptage = new Cryptage();

    def index(@RequestParameter('id') String id) {
        //def List<Utilisateur> listOfUtilisateurs = Utilisateur.getAll()
        //[u: Utilisateur.getAll()]
        [listOfUtilisateurs: Utilisateur.findById(id)]
    }

    def modifierInfos() {
        Utilisateur u = Utilisateur.findById(session.Utilisateur.id)
        u.nom = params.get("nom")
        u.prenom = params.get("prenom")
        u.save()
        session.Utilisateur = u
        flash.messagemodifierInfos = "Les informations modifiees avec succes."
        redirect(uri: "/user/" + session.Utilisateur.id)
    }

    def modifierPass() {
        Utilisateur u = Utilisateur.findById(session.Utilisateur.id)
        u.mdp = cryptage.encrypt(params.get("mdp"))
        u.save()
        session.Utilisateur = u
        flash.messagemodifierPass = "Le mot de passe modifie avec succes."
        redirect(uri: "/user/" + session.Utilisateur.id)
    }
}
