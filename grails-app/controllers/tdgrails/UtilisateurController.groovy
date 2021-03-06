package tdgrails

import javax.servlet.http.Cookie

import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class UtilisateurController {

    Cryptage cryptage = new Cryptage();

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond Utilisateur.list(params), model: [utilisateurInstanceCount: Utilisateur.count()]
    }

    def show(Utilisateur utilisateurInstance) {
        respond utilisateurInstance
    }

    def create() {
        respond new Utilisateur(params)
    }

    @Transactional
    def save(Utilisateur utilisateurInstance) {
        if (utilisateurInstance == null) {
            notFound()
            return
        }

        if (utilisateurInstance.hasErrors()) {
            respond utilisateurInstance.errors, view: 'create'
            return
        }
        utilisateurInstance.mdp = cryptage.encrypt(utilisateurInstance.mdp)
        utilisateurInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'utilisateur.label', default: 'Utilisateur'), utilisateurInstance.id])
                redirect utilisateurInstance
            }
            '*' { respond utilisateurInstance, [status: CREATED] }
        }
    }

    def edit(Utilisateur utilisateurInstance) {
        respond utilisateurInstance
    }

    @Transactional
    def update(Utilisateur utilisateurInstance) {
        if (utilisateurInstance == null) {
            notFound()
            return
        }

        if (utilisateurInstance.hasErrors()) {
            respond utilisateurInstance.errors, view: 'edit'
            return
        }

        utilisateurInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'Utilisateur.label', default: 'Utilisateur'), utilisateurInstance.id])
                redirect utilisateurInstance
            }
            '*' { respond utilisateurInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(Utilisateur utilisateurInstance) {

        if (utilisateurInstance == null) {
            notFound()
            return
        }

        utilisateurInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'Utilisateur.label', default: 'Utilisateur'), utilisateurInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'utilisateur.label', default: 'Utilisateur'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }

    def login() {
    }

    def redirection() {
        if (params.login != null) {
            def Utilisateur = Utilisateur.findByLogin(params.login)

            if (Utilisateur != null) {

                if (cryptage.decrypt(Utilisateur.mdp) == params.password) {
                    session.Utilisateur = Utilisateur
                    session.login = Utilisateur.login
                    session.nom = Utilisateur.nom
                    session.prenom = Utilisateur.prenom
                    session.mail = Utilisateur.mail
                    def cookie = new Cookie('myCookie', Utilisateur.nom)
                    cookie.maxAge = 60*60*24
                    response.addCookie( cookie)
                    return redirect(uri: "/accueil")
                }
            }
        }
        flash.message = "Votre login ${params.login} ou votre mot de passe est invalide."
        redirect(uri: "/")
    }

    def logout() {
        session.invalidate()
        redirect(uri: "/")
    }
}
