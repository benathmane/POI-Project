import tdgrails.GroupePois
import tdgrails.Utilisateur
import tdgrails.Poi

class BootStrap {

    def init = { servletContext ->
        Utilisateur u = new Utilisateur()
        /* 5 utilisateurs différents */
        u.nom = "AdminNon"
        u.prenom = "AdminPrenom"
        u.mail = "admin@admin.admin"
        u.login = "admin"
        u.mdp = "admin"
        u.save(flush: true)

        Utilisateur u1 = new Utilisateur(nom:"Benathmane", prenom: "Ayoub", login: "Il_Principino", mdp: "ayoubben", mail: "ab@mbds.com").save(flush: true)
        Utilisateur u2 = new Utilisateur(nom:"Boughzaf", prenom: "Nabil", login: "Il_Cheikh", mdp: "nabilbough", mail: "nb@mbds.com").save(flush: true)
        Utilisateur u3 = new Utilisateur(nom:"Saidi", prenom: "Marwén", login: "Il_Tounsi", mdp: "marwensai", mail: "ms@mbds.com").save(flush: true)
        Utilisateur u4 = new Utilisateur(nom:"Aalalou", prenom: "Soufiane", login: "Il_Aw", mdp: "soufianeaal", mail: "sa@hh.com").save(flush: true)

        /* 3 groupes différents */
        GroupePois g1  = new GroupePois(nom: "Groupe No 1").save(flush: true)
        GroupePois g2  = new GroupePois(nom: "Groupe No 2").save(flush: true)
        GroupePois g3  = new GroupePois(nom: "Groupe No 3").save(flush: true)

        /* 5 POIs pour chacun des groupes créés */
        Poi p11 = new Poi(description: "Poi 1 Groupe 1", lieu: "Nice", nom: "P11").save(flush: true)
        Poi p12 = new Poi(nom: "P12", lieu:"Nice", description: "Poi 2 Groupe 1").save(flush: true)
        Poi p13 = new Poi(nom: "P13", lieu:"Nice", description: "Poi 3 Groupe 1").save(flush: true)
        Poi p14 = new Poi(nom: "P14", lieu:"Nice", description: "Poi 4 Groupe 1").save(flush: true)
        Poi p15 = new Poi(nom: "P15", lieu:"Nice", description: "Poi 5 Groupe 1").save(flush: true)


        Poi p21 = new Poi(description: "Poi 1 Groupe 2", lieu: "Paris", nom: "P21").save(flush: true)
        Poi p22 = new Poi(nom: "P22", lieu:"Paris", description: "Poi 2 Groupe 2").save(flush: true)
        Poi p23 = new Poi(nom: "P23", lieu:"Paris", description: "Poi 3 Groupe 2").save(flush: true)
        Poi p24 = new Poi(nom: "P24", lieu:"Paris", description: "Poi 4 Groupe 2").save(flush: true)
        Poi p25 = new Poi(nom: "P25", lieu:"Paris", description: "Poi 5 Groupe 2").save(flush: true)


        Poi p31 = new Poi(description: "Poi 1 Groupe 3", lieu: "Marseille", nom: "P31").save(flush: true)
        Poi p32 = new Poi(nom: "P32", lieu:"Marseille", description: "Poi 2 Groupe 3").save(flush: true)
        Poi p33 = new Poi(nom: "P33", lieu:"Marseille", description: "Poi 3 Groupe 3").save(flush: true)
        Poi p34 = new Poi(nom: "P34", lieu:"Marseille", description: "Poi 4 Groupe 3").save(flush: true)
        Poi p35 = new Poi(nom: "P35", lieu:"Marseille", description: "Poi 5 Groupe 3").save(flush: true)

        /* Au moins un commentaire sur chaque POI */

    }
    def destroy = {
    }
}
