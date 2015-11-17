class UrlMappings {

	static mappings = {
        "/$controller/$action?/$id?(.$format)?"{
            constraints {
                // apply constraints here
            }
        }
        /*"/"(controller: 'user', action: 'login')*/

        /*"/"(view:"/index")*/
        "/"(view:"/login")
        "500"(view:'/error')
	}
}
