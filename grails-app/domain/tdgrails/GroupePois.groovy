package tdgrails

/**
 * Created by BENATHMANE on 16/11/2015.
 */
class GroupePois {
    String nom

    static hasMany = [pois : Poi, imgs : Image]

    static constraints = {
        pois nullable: true
        imgs nullable: true
    }
}
