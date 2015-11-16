package tdgrails

/**
 * Created by BENATHMANE on 16/11/2015.
 */
class Utilisateur {
    String nom
    String prenom
    String login
    String mail
    String mdp

    static hasMany = [commentaire : Commentaire]


    static constraints = {
        nom     blank: false, nullable: false
        prenom  blank: false, nullable: false
        mail    blank: false, nullable: false
        mdp     blank: false, nullable: false
    }
}
