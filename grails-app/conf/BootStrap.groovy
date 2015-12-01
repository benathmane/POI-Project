import tdgrails.Commentaire
import tdgrails.CommentaireService
import tdgrails.Cryptage
import tdgrails.GroupePois
import tdgrails.Image
import tdgrails.ImageService
import tdgrails.PoiService
import tdgrails.Utilisateur
import tdgrails.Poi
import tdgrails.UtilisateurService

class BootStrap {

    UtilisateurService utilisateurService
    ImageService imageService
    PoiService poiService
    CommentaireService commentaireService
    Cryptage cryptage = new Cryptage();

    def init = { servletContext ->

        Utilisateur u = new Utilisateur()
        /* 5 utilisateurs différents */
        u.nom = "AdminNon"
        u.prenom = "AdminPrenom"
        u.mail = "admin@admin.admin"
        u.login = "admin"
        u.mdp = cryptage.encrypt("admin")
        u.save(flush: true)

        Utilisateur u1 = new Utilisateur(nom:"Benathmane", prenom: "Ayoub", login: "Il_Principino", mdp: cryptage.encrypt("ayoubben"), mail: "ab@mbds.com").save(flush: true)
        Utilisateur u2 = new Utilisateur(nom:"Boughzaf", prenom: "Nabil", login: "Il_Cheikh", mdp: cryptage.encrypt("nabilbough"), mail: "nb@mbds.com").save(flush: true)
        Utilisateur u3 = new Utilisateur(nom:"Saidi", prenom: "Marwen", login: "Il_Tounsi", mdp: cryptage.encrypt("marwensai"), mail: "ms@mbds.com").save(flush: true)
        Utilisateur u4 = new Utilisateur(nom:"Aalalou", prenom: "Soufiane", login: "Il_Aw", mdp: cryptage.encrypt("soufianeaal"), mail: "sa@hh.com").save(flush: true)

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

        g1.addToPois(p11)
        g1.save(flush: true)

        g1.addToPois(p12)
        g1.save(flush: true)

        g1.addToPois(p13)
        g1.save(flush: true)

        g1.addToPois(p14)
        g1.save(flush: true)

        g1.addToPois(p15)
        g1.save(flush: true)



        g2.addToPois(p21)
        g2.save(flush: true)

        g2.addToPois(p22)
        g2.save(flush: true)

        g2.addToPois(p23)
        g2.save(flush: true)

        g2.addToPois(p24)
        g2.save(flush: true)

        g2.addToPois(p25)
        g2.save(flush: true)



        g3.addToPois(p31)
        g3.save(flush: true)

        g3.addToPois(p32)
        g3.save(flush: true)

        g3.addToPois(p33)
        g3.save(flush: true)

        g3.addToPois(p34)
        g3.save(flush: true)

        g3.addToPois(p35)
        g3.save(flush: true)

        /* Au moins un commentaire sur chaque POI */
        Commentaire co111 = new  Commentaire(titre: "titre1", texte: "texte1", note: 5, utilisateur: u1).save(flush: true)
        Commentaire co122 = new  Commentaire(titre: "titre2", texte: "texte2", note: 2, utilisateur: u2).save(flush: true)
        Commentaire co133 = new  Commentaire(titre: "titre3", texte: "texte3", note: 3, utilisateur: u3).save(flush: true)
        Commentaire co144 = new  Commentaire(titre: "titre4", texte: "texte4", note: 4, utilisateur: u4).save(flush: true)
        Commentaire co155 = new  Commentaire(titre: "titre5", texte: "texte5", note: 5, utilisateur: u4).save(flush: true)
        Commentaire co216 = new  Commentaire(titre: "titre6", texte: "texte6", note: 6, utilisateur: u1).save(flush: true)
        Commentaire co227 = new  Commentaire(titre: "titre7", texte: "texte7", note: 7, utilisateur: u1).save(flush: true)
        Commentaire co238 = new  Commentaire(titre: "titre8", texte: "texte8", note: 8, utilisateur: u2).save(flush: true)
        Commentaire co249 = new  Commentaire(titre: "titre9", texte: "texte9", note: 9, utilisateur: u3).save(flush: true)
        Commentaire co2510 = new  Commentaire(titre: "titre10", texte: "texte10", note: 10, utilisateur: u4).save(flush: true)
        Commentaire co3111 = new  Commentaire(titre: "titre11", texte: "texte11", note: 11, utilisateur: u3).save(flush: true)
        Commentaire co3212 = new  Commentaire(titre: "titre12", texte: "texte12", note: 12, utilisateur: u1).save(flush: true)
        Commentaire co3313 = new  Commentaire(titre: "titre13", texte: "texte13", note: 13, utilisateur: u2).save(flush: true)
        Commentaire co3414 = new  Commentaire(titre: "titre14", texte: "texte14", note: 14, utilisateur: u2).save(flush: true)
        Commentaire co3515 = new  Commentaire(titre: "titre15", texte: "texte15", note: 15, utilisateur: u1).save(flush: true)

        p11.addToComments(co111)
        p11.save(flush: true)

        p12.addToComments(co122)
        p12.save(flush: true)

        p13.addToComments(co133)
        p13.save(flush: true)

        p14.addToComments(co144)
        p14.save(flush: true)

        p15.addToComments(co155)
        p15.save(flush: true)

        p21.addToComments(co216)
        p21.save(flush: true)

        p22.addToComments(co227)
        p22.save(flush: true)

        p23.addToComments(co238)
        p23.save(flush: true)

        p24.addToComments(co249)
        p24.save(flush: true)

        p25.addToComments(co2510)
        p25.save(flush: true)

        p31.addToComments(co3111)
        p31.save(flush: true)

        p32.addToComments(co3212)
        p32.save(flush: true)

        p33.addToComments(co3313)
        p33.save(flush: true)

        p34.addToComments(co3414)
        p34.save(flush: true)

        p35.addToComments(co3515)
        p35.save(flush: true)

        /* Création des images */
        Image img1 = new Image(name: "image 1", path: "/usr/benathmane/img1.png").save(flush: true)
        Image img2 = new Image(name: "image 2", path: "/usr/benathmane/img2.png").save(flush: true)
        Image img3 = new Image(name: "image 3", path: "/usr/benathmane/img3.png").save(flush: true)

        /* image ~> Poi */

        Poi p41 = new Poi(description: "Poi 1 Image 4", lieu: "Casablanca", nom: "P41").save(flush: true)
        Poi p42 = new Poi(nom: "P42", lieu:"Casablanca", description: "Poi 2 Image 5").save(flush: true)
        Poi p43 = new Poi(nom: "P43", lieu:"Casablanca", description: "Poi 3 Image 6").save(flush: true)
        Poi p44 = new Poi(nom: "P44", lieu:"Casablanca", description: "Poi 4 Image 7").save(flush: true)
        Poi p45 = new Poi(nom: "P45", lieu:"Casablanca", description: "Poi 5 Image 8").save(flush: true)

        Image img4 = new Image(name: "image 4", path: "/usr/benathmane/img4.png").save(flush: true)
        Image img5 = new Image(name: "image 5", path: "/usr/benathmane/img5.png").save(flush: true)
        Image img6 = new Image(name: "image 6", path: "/usr/benathmane/img6.png").save(flush: true)
        Image img7 = new Image(name: "image 7", path: "/usr/benathmane/img7.png").save(flush: true)
        Image img8 = new Image(name: "image 8", path: "/usr/benathmane/img8.png").save(flush: true)

        p41.addToImgs(img4)
        p41.save(flush: true)

        p42.addToImgs(img5)
        p42.save(flush: true)

        p43.addToImgs(img6)
        p43.save(flush: true)

        p44.addToImgs(img7)
        p44.save(flush: true)

        p45.addToImgs(img8)
        p45.save(flush: true)

        /* image ~> Groupe */
        g1.addToImgs(img1)
        g1.save(flush: true)

        g2.addToImgs(img2)
        g2.save(flush: true)

        g3.addToImgs(img3)
        g3.save(flush: true)

        /**
         * Test des services
         */
        Utilisateur utilisateurNew = utilisateurService.createUtilisateur(nom:"Valentin", prenom: "Marie", login: "Il_Italiana", mdp: cryptage.encrypt("MValentin"), mail: "mv@civ.com")
        Commentaire commentaireNew = commentaireService.createCommentaire(titre: "titreNew01", texte: "texteNew01", note: 1, utilisateur: utilisateurNew)
        Image imageNew = imageService.createImage(name: "image 44", path: "/usr/benathmane/img44.png")
        Poi poiNew = poiService.createPoi(nom: "P229999999", lieu:"Valbonne", description: "Poi P229999999 Test Service", imgs: imageNew)
    }
    def destroy = {
    }
}
