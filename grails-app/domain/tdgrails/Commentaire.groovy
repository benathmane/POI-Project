package tdgrails

/**
 * Created by BENATHMANE on 16/11/2015.
 */
class Commentaire {
        String titre
        String texte
        Integer note

        static hasOne = [utilisateur : Utilisateur]

        static constraints = {
            titre       blank:false, minSize: 1, maxSize: 140
            texte       nullable: true
            note        nullable: true , min:0 , max:20
            utilisateur blank : false, nullable: true
        }

}
