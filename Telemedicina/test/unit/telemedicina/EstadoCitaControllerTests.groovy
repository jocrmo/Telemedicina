package telemedicina



import org.junit.*
import grails.test.mixin.*

@TestFor(EstadoCitaController)
@Mock(EstadoCita)
class EstadoCitaControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/estadoCita/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.estadoCitaInstanceList.size() == 0
        assert model.estadoCitaInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.estadoCitaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.estadoCitaInstance != null
        assert view == '/estadoCita/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/estadoCita/show/1'
        assert controller.flash.message != null
        assert EstadoCita.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/estadoCita/list'

        populateValidParams(params)
        def estadoCita = new EstadoCita(params)

        assert estadoCita.save() != null

        params.id = estadoCita.id

        def model = controller.show()

        assert model.estadoCitaInstance == estadoCita
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/estadoCita/list'

        populateValidParams(params)
        def estadoCita = new EstadoCita(params)

        assert estadoCita.save() != null

        params.id = estadoCita.id

        def model = controller.edit()

        assert model.estadoCitaInstance == estadoCita
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/estadoCita/list'

        response.reset()

        populateValidParams(params)
        def estadoCita = new EstadoCita(params)

        assert estadoCita.save() != null

        // test invalid parameters in update
        params.id = estadoCita.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/estadoCita/edit"
        assert model.estadoCitaInstance != null

        estadoCita.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/estadoCita/show/$estadoCita.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        estadoCita.clearErrors()

        populateValidParams(params)
        params.id = estadoCita.id
        params.version = -1
        controller.update()

        assert view == "/estadoCita/edit"
        assert model.estadoCitaInstance != null
        assert model.estadoCitaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/estadoCita/list'

        response.reset()

        populateValidParams(params)
        def estadoCita = new EstadoCita(params)

        assert estadoCita.save() != null
        assert EstadoCita.count() == 1

        params.id = estadoCita.id

        controller.delete()

        assert EstadoCita.count() == 0
        assert EstadoCita.get(estadoCita.id) == null
        assert response.redirectedUrl == '/estadoCita/list'
    }
}
