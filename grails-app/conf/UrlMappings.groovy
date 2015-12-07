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
        "/fpoi/index" (controller: "frontPoi", action: "index")
        "/fpoi/$id" (controller: "frontPoi", action: "show")
        "/fgroup/index" (controller: "frontGroup", action: "index")
        "/fgroup/$id" (controller: "frontGroup", action: "show")
        "/user/modifierInfos" (controller: "frontUtilisateur", action: "modifierInfos")
        "/user/modifierPass" (controller: "frontUtilisateur", action:"modifierPass")
        "/accueil"(view:"/index")
        //"/"(view:"/login")
        "500"(view:'/error')
	}
}
