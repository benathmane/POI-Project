package tdgrails

import grails.transaction.Transactional
import grails.web.RequestParameter

@Transactional(readOnly = false)
class FrontGroupController {

    def index() {
        [listOfGroups: GroupePois.findAll()]
    }

    def show(@RequestParameter('id') String id) {
        [GroupePois: GroupePois.findById(id)]
    }

    def edit(@RequestParameter('id') String id) {
        [EgroupePois: GroupePois.findById(id)]
    }

    def create() {
        redirect(controller: "GroupePois", action: "create")
    }

    def save() {
        GroupePois groupePois = GroupePois.findById(params.id)
        groupePois.nom = params.get("nom")
        groupePois.save()
        flash.messageFGmodifier = "Les informations sont bien modifieees"
        redirect(uri: "/fgroup/" + groupePois.id)
    }
}
