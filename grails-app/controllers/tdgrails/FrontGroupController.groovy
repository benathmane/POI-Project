package tdgrails

import grails.transaction.Transactional
import grails.web.RequestParameter

@Transactional(readOnly = false)
class FrontGroupController {

    String listOfGroups


    def index() {
        [listOfGroups: GroupePois.findAll()]
    }

    def show() {

    }

    def edit(@RequestParameter('id') String id) {
        GroupePois groupePois = GroupePois.findById(id)
        groupePois.nom = params.get("nom")
        groupePois.pois = params.get("poi")
        groupePois.imgs = params.get("img")
        groupePois.save()
        flash.message = "données modifiées"


    }

    def create() {
        respond new GroupePois(params)
    }
}
