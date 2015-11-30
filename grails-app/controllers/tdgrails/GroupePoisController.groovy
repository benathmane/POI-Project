package tdgrails


import static org.springframework.http.HttpStatus.*
import grails.transaction.Transactional

@Transactional(readOnly = true)
class GroupePoisController {

    static allowedMethods = [save: "POST", update: "PUT", delete: "DELETE"]

    def index(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        respond GroupePois.list(params), model: [groupePoisInstanceCount: GroupePois.count()]
    }

    def show(GroupePois groupePoisInstance) {
        respond groupePoisInstance
    }

    def create() {
        respond new GroupePois(params)
    }

    @Transactional
    def save(GroupePois groupePoisInstance) {
        if (groupePoisInstance == null) {
            notFound()
            return
        }

        if (groupePoisInstance.hasErrors()) {
            respond groupePoisInstance.errors, view: 'create'
            return
        }

        groupePoisInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.created.message', args: [message(code: 'groupePois.label', default: 'GroupePois'), groupePoisInstance.id])
                redirect groupePoisInstance
            }
            '*' { respond groupePoisInstance, [status: CREATED] }
        }
    }

    def edit(GroupePois groupePoisInstance) {
        respond groupePoisInstance
    }

    @Transactional
    def update(GroupePois groupePoisInstance) {
        if (groupePoisInstance == null) {
            notFound()
            return
        }

        if (groupePoisInstance.hasErrors()) {
            respond groupePoisInstance.errors, view: 'edit'
            return
        }

        groupePoisInstance.save flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.updated.message', args: [message(code: 'GroupePois.label', default: 'GroupePois'), groupePoisInstance.id])
                redirect groupePoisInstance
            }
            '*' { respond groupePoisInstance, [status: OK] }
        }
    }

    @Transactional
    def delete(GroupePois groupePoisInstance) {

        if (groupePoisInstance == null) {
            notFound()
            return
        }

        groupePoisInstance.delete flush: true

        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.deleted.message', args: [message(code: 'GroupePois.label', default: 'GroupePois'), groupePoisInstance.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NO_CONTENT }
        }
    }

    protected void notFound() {
        request.withFormat {
            form multipartForm {
                flash.message = message(code: 'default.not.found.message', args: [message(code: 'groupePois.label', default: 'GroupePois'), params.id])
                redirect action: "index", method: "GET"
            }
            '*' { render status: NOT_FOUND }
        }
    }
}
