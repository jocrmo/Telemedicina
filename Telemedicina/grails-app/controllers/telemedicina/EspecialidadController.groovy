package telemedicina

import org.springframework.dao.DataIntegrityViolationException

class EspecialidadController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [especialidadInstanceList: Especialidad.list(params), especialidadInstanceTotal: Especialidad.count()]
    }

    def create() {
        [especialidadInstance: new Especialidad(params)]
    }

    def save() {
        def especialidadInstance = new Especialidad(params)
        if (!especialidadInstance.save(flush: true)) {
            render(view: "create", model: [especialidadInstance: especialidadInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'especialidad.label', default: 'Especialidad'), especialidadInstance.id])
        redirect(action: "show", id: especialidadInstance.id)
    }

    def show(Long id) {
        def especialidadInstance = Especialidad.get(id)
        if (!especialidadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'especialidad.label', default: 'Especialidad'), id])
            redirect(action: "list")
            return
        }

        [especialidadInstance: especialidadInstance]
    }

    def edit(Long id) {
        def especialidadInstance = Especialidad.get(id)
        if (!especialidadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'especialidad.label', default: 'Especialidad'), id])
            redirect(action: "list")
            return
        }

        [especialidadInstance: especialidadInstance]
    }

    def update(Long id, Long version) {
        def especialidadInstance = Especialidad.get(id)
        if (!especialidadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'especialidad.label', default: 'Especialidad'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (especialidadInstance.version > version) {
                especialidadInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'especialidad.label', default: 'Especialidad')] as Object[],
                          "Another user has updated this Especialidad while you were editing")
                render(view: "edit", model: [especialidadInstance: especialidadInstance])
                return
            }
        }

        especialidadInstance.properties = params

        if (!especialidadInstance.save(flush: true)) {
            render(view: "edit", model: [especialidadInstance: especialidadInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'especialidad.label', default: 'Especialidad'), especialidadInstance.id])
        redirect(action: "show", id: especialidadInstance.id)
    }

    def delete(Long id) {
        def especialidadInstance = Especialidad.get(id)
        if (!especialidadInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'especialidad.label', default: 'Especialidad'), id])
            redirect(action: "list")
            return
        }

        try {
            especialidadInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'especialidad.label', default: 'Especialidad'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'especialidad.label', default: 'Especialidad'), id])
            redirect(action: "show", id: id)
        }
    }
}
