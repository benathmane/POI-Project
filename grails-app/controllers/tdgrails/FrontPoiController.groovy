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
}
