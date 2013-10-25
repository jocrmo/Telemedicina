package telemedicina

import org.springframework.dao.DataIntegrityViolationException

class MedicoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [medicoInstanceList: Medico.list(params), medicoInstanceTotal: Medico.count()]
    }

    def create() {
        [medicoInstance: new Medico(params)]
    }

    def save() {
        def medicoInstance = new Medico(params)
        if (!medicoInstance.save(flush: true)) {
            render(view: "create", model: [medicoInstance: medicoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'medico.label', default: 'Medico'), medicoInstance.id])
        redirect(action: "show", id: medicoInstance.id)
    }

    def show(Long id) {
        def medicoInstance = Medico.get(id)
        if (!medicoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'medico.label', default: 'Medico'), id])
            redirect(action: "list")
            return
        }

        [medicoInstance: medicoInstance]
    }

    def edit(Long id) {
        def medicoInstance = Medico.get(id)
        if (!medicoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'medico.label', default: 'Medico'), id])
            redirect(action: "list")
            return
        }

        [medicoInstance: medicoInstance]
    }

    def update(Long id, Long version) {
        def medicoInstance = Medico.get(id)
        if (!medicoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'medico.label', default: 'Medico'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (medicoInstance.version > version) {
                medicoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'medico.label', default: 'Medico')] as Object[],
                          "Another user has updated this Medico while you were editing")
                render(view: "edit", model: [medicoInstance: medicoInstance])
                return
            }
        }

        medicoInstance.properties = params

        if (!medicoInstance.save(flush: true)) {
            render(view: "edit", model: [medicoInstance: medicoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'medico.label', default: 'Medico'), medicoInstance.id])
        redirect(action: "show", id: medicoInstance.id)
    }

    def delete(Long id) {
        def medicoInstance = Medico.get(id)
        if (!medicoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'medico.label', default: 'Medico'), id])
            redirect(action: "list")
            return
        }

        try {
            medicoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'medico.label', default: 'Medico'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'medico.label', default: 'Medico'), id])
            redirect(action: "show", id: id)
        }
    }
}
