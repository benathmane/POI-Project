class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        "/"(controller: 'utilisateur', action: 'login')
        "/logout"(controller: 'utilisateur', action: 'logout')
        "/user/$id" (controller: "front", action: "index")
        "/user/modifierInfos" (controller: "front", action: "modifierInfos")
        "/user/modifierPass" (controller: "front", action:"modifierPass")
        "/accueil"(view:"/index")
        //"/"(view:"/login")
        "500"(view:'/error')
	}
}
