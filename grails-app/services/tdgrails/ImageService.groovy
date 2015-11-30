package tdgrails

import grails.transaction.Transactional

@Transactional
class ImageService {

    def serviceMethod() {

    }

    ImageService imageService

    Image createImage(params) {
        Image newImage = new Image(
                name: params.name,
                path: params.path)
        newImage.save(failOnError: true)
        return newImage
    }
}
