package tdgrails

/**
 * Created by BENATHMANE on 16/11/2015.
 */
class Poi {
    String nom
    String lieu
    String desc

    static hasMany = [comments : Commentaire, imgs : Image]

    static constraints = {
        nom     blank: false, nullable: false
        lieu    nullable: true
        desc    nullable: true
        comments nullable: true
        imgs    nullable: true
    }
}
