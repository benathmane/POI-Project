package tdgrails

import grails.transaction.Transactional

@Transactional
class PoiService {

    def serviceMethod() {

    }
    PoiService poiService

    Poi createPoi(params) {
        Poi newPoi = new Poi(nom: params.nom,
                lieu: params.lieu,
                description: params.description,
                imgs: params.imgs)
        newPoi.save(failOnError: true)
        return newPoi
    }
}
