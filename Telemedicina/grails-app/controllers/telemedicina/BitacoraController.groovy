package telemedicina

import org.springframework.dao.DataIntegrityViolationException

class BitacoraController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [bitacoraInstanceList: Bitacora.list(params), bitacoraInstanceTotal: Bitacora.count()]
    }

    def create() {
        [bitacoraInstance: new Bitacora(params)]
    }

    def save() {
        def bitacoraInstance = new Bitacora(params)
        if (!bitacoraInstance.save(flush: true)) {
            render(view: "create", model: [bitacoraInstance: bitacoraInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'bitacora.label', default: 'Bitacora'), bitacoraInstance.id])
        redirect(action: "show", id: bitacoraInstance.id)
    }

    def show(Long id) {
        def bitacoraInstance = Bitacora.get(id)
        if (!bitacoraInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'bitacora.label', default: 'Bitacora'), id])
            redirect(action: "list")
            return
        }

        [bitacoraInstance: bitacoraInstance]
    }

    def edit(Long id) {
        def bitacoraInstance = Bitacora.get(id)
        if (!bitacoraInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'bitacora.label', default: 'Bitacora'), id])
            redirect(action: "list")
            return
        }

        [bitacoraInstance: bitacoraInstance]
    }

    def update(Long id, Long version) {
        def bitacoraInstance = Bitacora.get(id)
        if (!bitacoraInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'bitacora.label', default: 'Bitacora'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (bitacoraInstance.version > version) {
                bitacoraInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'bitacora.label', default: 'Bitacora')] as Object[],
                          "Another user has updated this Bitacora while you were editing")
                render(view: "edit", model: [bitacoraInstance: bitacoraInstance])
                return
            }
        }

        bitacoraInstance.properties = params

        if (!bitacoraInstance.save(flush: true)) {
            render(view: "edit", model: [bitacoraInstance: bitacoraInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'bitacora.label', default: 'Bitacora'), bitacoraInstance.id])
        redirect(action: "show", id: bitacoraInstance.id)
    }

    def delete(Long id) {
        def bitacoraInstance = Bitacora.get(id)
        if (!bitacoraInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'bitacora.label', default: 'Bitacora'), id])
            redirect(action: "list")
            return
        }

        try {
            bitacoraInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'bitacora.label', default: 'Bitacora'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'bitacora.label', default: 'Bitacora'), id])
            redirect(action: "show", id: id)
        }
    }
}
