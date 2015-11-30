class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        "/"(controller: 'utilisateur', action: 'login')

        "/accueil"(view:"/index")
        //"/"(view:"/login")
        "500"(view:'/error')
	}
}
