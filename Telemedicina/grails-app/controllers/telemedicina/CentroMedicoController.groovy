package telemedicina

import org.springframework.dao.DataIntegrityViolationException

class CentroMedicoController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [centroMedicoInstanceList: CentroMedico.list(params), centroMedicoInstanceTotal: CentroMedico.count()]
    }

    def create() {
        [centroMedicoInstance: new CentroMedico(params)]
    }

    def save() {
        def centroMedicoInstance = new CentroMedico(params)
        if (!centroMedicoInstance.save(flush: true)) {
            render(view: "create", model: [centroMedicoInstance: centroMedicoInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'centroMedico.label', default: 'CentroMedico'), centroMedicoInstance.id])
        redirect(action: "show", id: centroMedicoInstance.id)
    }

    def show(Long id) {
        def centroMedicoInstance = CentroMedico.get(id)
        if (!centroMedicoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'centroMedico.label', default: 'CentroMedico'), id])
            redirect(action: "list")
            return
        }

        [centroMedicoInstance: centroMedicoInstance]
    }

    def edit(Long id) {
        def centroMedicoInstance = CentroMedico.get(id)
        if (!centroMedicoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'centroMedico.label', default: 'CentroMedico'), id])
            redirect(action: "list")
            return
        }

        [centroMedicoInstance: centroMedicoInstance]
    }

    def update(Long id, Long version) {
        def centroMedicoInstance = CentroMedico.get(id)
        if (!centroMedicoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'centroMedico.label', default: 'CentroMedico'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (centroMedicoInstance.version > version) {
                centroMedicoInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'centroMedico.label', default: 'CentroMedico')] as Object[],
                          "Another user has updated this CentroMedico while you were editing")
                render(view: "edit", model: [centroMedicoInstance: centroMedicoInstance])
                return
            }
        }

        centroMedicoInstance.properties = params

        if (!centroMedicoInstance.save(flush: true)) {
            render(view: "edit", model: [centroMedicoInstance: centroMedicoInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'centroMedico.label', default: 'CentroMedico'), centroMedicoInstance.id])
        redirect(action: "show", id: centroMedicoInstance.id)
    }

    def delete(Long id) {
        def centroMedicoInstance = CentroMedico.get(id)
        if (!centroMedicoInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'centroMedico.label', default: 'CentroMedico'), id])
            redirect(action: "list")
            return
        }

        try {
            centroMedicoInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'centroMedico.label', default: 'CentroMedico'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'centroMedico.label', default: 'CentroMedico'), id])
            redirect(action: "show", id: id)
        }
    }
}
