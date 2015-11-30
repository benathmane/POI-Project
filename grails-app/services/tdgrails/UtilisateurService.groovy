package tdgrails

import grails.transaction.Transactional

@Transactional
class UtilisateurService {

    def serviceMethod() {

    }

    Utilisateur createUtilisateur ( params ) {
        Utilisateur new_utilisateur = new Utilisateur(
                nom: params.nom,
                prenom: params.prenom,
                login: params.login,
                mdp: params.mdp,
                mail: params.mail
        )
        new_utilisateur.save(failOnError: true)
        return new_utilisateur
    }
}
