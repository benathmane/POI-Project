class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        "/"(controller: 'utilisateur', action: 'login')
        "/logout"(controller: 'utilisateur', action: 'logout')
        "/user/$id" (controller: "frontUtilisateur", action: "index")
        "/user/modifierInfos" (controller: "frontUtilisateur", action: "modifierInfos")
        "/user/modifierPass" (controller: "frontUtilisateur", action:"modifierPass")
        "/accueil"(view:"/index")
        //"/"(view:"/login")
        "500"(view:'/error')
	}
}
