package telemedicina

import org.springframework.dao.DataIntegrityViolationException

class EstadoCitaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [estadoCitaInstanceList: EstadoCita.list(params), estadoCitaInstanceTotal: EstadoCita.count()]
    }

    def create() {
        [estadoCitaInstance: new EstadoCita(params)]
    }

    def save() {
        def estadoCitaInstance = new EstadoCita(params)
        if (!estadoCitaInstance.save(flush: true)) {
            render(view: "create", model: [estadoCitaInstance: estadoCitaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'estadoCita.label', default: 'EstadoCita'), estadoCitaInstance.id])
        redirect(action: "show", id: estadoCitaInstance.id)
    }

    def show(Long id) {
        def estadoCitaInstance = EstadoCita.get(id)
        if (!estadoCitaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'estadoCita.label', default: 'EstadoCita'), id])
            redirect(action: "list")
            return
        }

        [estadoCitaInstance: estadoCitaInstance]
    }

    def edit(Long id) {
        def estadoCitaInstance = EstadoCita.get(id)
        if (!estadoCitaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'estadoCita.label', default: 'EstadoCita'), id])
            redirect(action: "list")
            return
        }

        [estadoCitaInstance: estadoCitaInstance]
    }

    def update(Long id, Long version) {
        def estadoCitaInstance = EstadoCita.get(id)
        if (!estadoCitaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'estadoCita.label', default: 'EstadoCita'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (estadoCitaInstance.version > version) {
                estadoCitaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'estadoCita.label', default: 'EstadoCita')] as Object[],
                          "Another user has updated this EstadoCita while you were editing")
                render(view: "edit", model: [estadoCitaInstance: estadoCitaInstance])
                return
            }
        }

        estadoCitaInstance.properties = params

        if (!estadoCitaInstance.save(flush: true)) {
            render(view: "edit", model: [estadoCitaInstance: estadoCitaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'estadoCita.label', default: 'EstadoCita'), estadoCitaInstance.id])
        redirect(action: "show", id: estadoCitaInstance.id)
    }

    def delete(Long id) {
        def estadoCitaInstance = EstadoCita.get(id)
        if (!estadoCitaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'estadoCita.label', default: 'EstadoCita'), id])
            redirect(action: "list")
            return
        }

        try {
            estadoCitaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'estadoCita.label', default: 'EstadoCita'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'estadoCita.label', default: 'EstadoCita'), id])
            redirect(action: "show", id: id)
        }
    }
}
