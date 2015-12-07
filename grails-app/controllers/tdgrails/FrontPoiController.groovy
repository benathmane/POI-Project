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

    def create(){
        redirect(controller: "Poi", action: "create")
    }

    def edit(@RequestParameter('id') String id) {
        [Epoi: Poi.findById(id)]
    }

    def save() {
    }
}
