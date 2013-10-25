package telemedicina

import org.springframework.dao.DataIntegrityViolationException

class HistoriaClinicaController {

    static allowedMethods = [save: "POST", update: "POST", delete: "POST"]

    def index() {
        redirect(action: "list", params: params)
    }

    def list(Integer max) {
        params.max = Math.min(max ?: 10, 100)
        [historiaClinicaInstanceList: HistoriaClinica.list(params), historiaClinicaInstanceTotal: HistoriaClinica.count()]
    }

    def create() {
        [historiaClinicaInstance: new HistoriaClinica(params)]
    }

    def save() {
        def historiaClinicaInstance = new HistoriaClinica(params)
        if (!historiaClinicaInstance.save(flush: true)) {
            render(view: "create", model: [historiaClinicaInstance: historiaClinicaInstance])
            return
        }

        flash.message = message(code: 'default.created.message', args: [message(code: 'historiaClinica.label', default: 'HistoriaClinica'), historiaClinicaInstance.id])
        redirect(action: "show", id: historiaClinicaInstance.id)
    }

    def show(Long id) {
        def historiaClinicaInstance = HistoriaClinica.get(id)
        if (!historiaClinicaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'historiaClinica.label', default: 'HistoriaClinica'), id])
            redirect(action: "list")
            return
        }

        [historiaClinicaInstance: historiaClinicaInstance]
    }

    def edit(Long id) {
        def historiaClinicaInstance = HistoriaClinica.get(id)
        if (!historiaClinicaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'historiaClinica.label', default: 'HistoriaClinica'), id])
            redirect(action: "list")
            return
        }

        [historiaClinicaInstance: historiaClinicaInstance]
    }

    def update(Long id, Long version) {
        def historiaClinicaInstance = HistoriaClinica.get(id)
        if (!historiaClinicaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'historiaClinica.label', default: 'HistoriaClinica'), id])
            redirect(action: "list")
            return
        }

        if (version != null) {
            if (historiaClinicaInstance.version > version) {
                historiaClinicaInstance.errors.rejectValue("version", "default.optimistic.locking.failure",
                          [message(code: 'historiaClinica.label', default: 'HistoriaClinica')] as Object[],
                          "Another user has updated this HistoriaClinica while you were editing")
                render(view: "edit", model: [historiaClinicaInstance: historiaClinicaInstance])
                return
            }
        }

        historiaClinicaInstance.properties = params

        if (!historiaClinicaInstance.save(flush: true)) {
            render(view: "edit", model: [historiaClinicaInstance: historiaClinicaInstance])
            return
        }

        flash.message = message(code: 'default.updated.message', args: [message(code: 'historiaClinica.label', default: 'HistoriaClinica'), historiaClinicaInstance.id])
        redirect(action: "show", id: historiaClinicaInstance.id)
    }

    def delete(Long id) {
        def historiaClinicaInstance = HistoriaClinica.get(id)
        if (!historiaClinicaInstance) {
            flash.message = message(code: 'default.not.found.message', args: [message(code: 'historiaClinica.label', default: 'HistoriaClinica'), id])
            redirect(action: "list")
            return
        }

        try {
            historiaClinicaInstance.delete(flush: true)
            flash.message = message(code: 'default.deleted.message', args: [message(code: 'historiaClinica.label', default: 'HistoriaClinica'), id])
            redirect(action: "list")
        }
        catch (DataIntegrityViolationException e) {
            flash.message = message(code: 'default.not.deleted.message', args: [message(code: 'historiaClinica.label', default: 'HistoriaClinica'), id])
            redirect(action: "show", id: id)
        }
    }
}
