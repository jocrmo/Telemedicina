package telemedicina



import org.junit.*
import grails.test.mixin.*

@TestFor(HistoriaClinicaController)
@Mock(HistoriaClinica)
class HistoriaClinicaControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/historiaClinica/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.historiaClinicaInstanceList.size() == 0
        assert model.historiaClinicaInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.historiaClinicaInstance != null
    }

    void testSave() {
        controller.save()

        assert model.historiaClinicaInstance != null
        assert view == '/historiaClinica/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/historiaClinica/show/1'
        assert controller.flash.message != null
        assert HistoriaClinica.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/historiaClinica/list'

        populateValidParams(params)
        def historiaClinica = new HistoriaClinica(params)

        assert historiaClinica.save() != null

        params.id = historiaClinica.id

        def model = controller.show()

        assert model.historiaClinicaInstance == historiaClinica
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/historiaClinica/list'

        populateValidParams(params)
        def historiaClinica = new HistoriaClinica(params)

        assert historiaClinica.save() != null

        params.id = historiaClinica.id

        def model = controller.edit()

        assert model.historiaClinicaInstance == historiaClinica
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/historiaClinica/list'

        response.reset()

        populateValidParams(params)
        def historiaClinica = new HistoriaClinica(params)

        assert historiaClinica.save() != null

        // test invalid parameters in update
        params.id = historiaClinica.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/historiaClinica/edit"
        assert model.historiaClinicaInstance != null

        historiaClinica.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/historiaClinica/show/$historiaClinica.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        historiaClinica.clearErrors()

        populateValidParams(params)
        params.id = historiaClinica.id
        params.version = -1
        controller.update()

        assert view == "/historiaClinica/edit"
        assert model.historiaClinicaInstance != null
        assert model.historiaClinicaInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/historiaClinica/list'

        response.reset()

        populateValidParams(params)
        def historiaClinica = new HistoriaClinica(params)

        assert historiaClinica.save() != null
        assert HistoriaClinica.count() == 1

        params.id = historiaClinica.id

        controller.delete()

        assert HistoriaClinica.count() == 0
        assert HistoriaClinica.get(historiaClinica.id) == null
        assert response.redirectedUrl == '/historiaClinica/list'
    }
}
