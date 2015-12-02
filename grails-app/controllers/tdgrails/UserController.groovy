package tdgrails

class UserController {

    def index(Integer max)
    {
        params.max = Math.min(max ?: 10, 100)
        respond Utilisateur.list(params), model: [utilisateurInstanceCount: Utilisateur.count()]
    }

    def show(Utilisateur utilisateurInstance) {
        respond utilisateurInstance.nom
    }
}
