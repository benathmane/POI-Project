package tdgrails

import grails.transaction.Transactional

@Transactional(readOnly = false)
class FrontPoiController {

    def index() {
        [listOfPois: Poi.findAll()]
    }
}
