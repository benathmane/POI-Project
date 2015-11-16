package tdgrails

/**
 * Created by BENATHMANE on 16/11/2015.
 */
class Image {
    String name
    String path

    static constraints = {
        name blank: false
        path blank: false, nullable: false
    }
}
