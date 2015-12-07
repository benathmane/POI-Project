package tdgrails

import grails.transaction.Transactional
import grails.web.RequestParameter

@Transactional(readOnly = false)
class FrontPoiController {

    def index() {
        [listOfPois: Poi.findAll()]
    }

    def show(@RequestParameter('id') String id) {
        [Poi: Poi.findById(id)]
    }

    def create() {
        redirect(controller: "Poi", action: "create")
    }

    def edit(@RequestParameter('id') String id) {
        [Epoi: Poi.findById(id)]
    }

    def save() {
        Poi poi = Poi.findById(params.id)
        poi.nom = params.get("nom")
        poi.lieu = params.get("lieu")
        poi.description = params.get("description")
        poi.save()
        flash.messagemodifierPInfos = "Les informations sont bien modifieees"
        redirect(uri: "/fpoi/" + poi.id)
    }

    def addComment(){
        Poi poi = Poi.findById(params.id)
        Utilisateur utilisateur = Utilisateur.findById(session.Utilisateur.id)
        Commentaire commentaire = new  Commentaire(titre: params.get("titre"), texte: params.get("texte"), note: params.get("note"), utilisateur: utilisateur).save(flush: true)
        poi.addToComments(commentaire)
        poi.save(flush: true)
        flash.messagemodifierPInfos = "Le commentaire a bien ete ajoute"
        redirect(uri: "/fpoi/" + poi.id)
    }
}
