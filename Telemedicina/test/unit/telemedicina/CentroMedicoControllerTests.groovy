package telemedicina



import org.junit.*
import grails.test.mixin.*

@TestFor(CentroMedicoController)
@Mock(CentroMedico)
class CentroMedicoControllerTests {

    def populateValidParams(params) {
        assert params != null
        // TODO: Populate valid properties like...
        //params["name"] = 'someValidName'
    }

    void testIndex() {
        controller.index()
        assert "/centroMedico/list" == response.redirectedUrl
    }

    void testList() {

        def model = controller.list()

        assert model.centroMedicoInstanceList.size() == 0
        assert model.centroMedicoInstanceTotal == 0
    }

    void testCreate() {
        def model = controller.create()

        assert model.centroMedicoInstance != null
    }

    void testSave() {
        controller.save()

        assert model.centroMedicoInstance != null
        assert view == '/centroMedico/create'

        response.reset()

        populateValidParams(params)
        controller.save()

        assert response.redirectedUrl == '/centroMedico/show/1'
        assert controller.flash.message != null
        assert CentroMedico.count() == 1
    }

    void testShow() {
        controller.show()

        assert flash.message != null
        assert response.redirectedUrl == '/centroMedico/list'

        populateValidParams(params)
        def centroMedico = new CentroMedico(params)

        assert centroMedico.save() != null

        params.id = centroMedico.id

        def model = controller.show()

        assert model.centroMedicoInstance == centroMedico
    }

    void testEdit() {
        controller.edit()

        assert flash.message != null
        assert response.redirectedUrl == '/centroMedico/list'

        populateValidParams(params)
        def centroMedico = new CentroMedico(params)

        assert centroMedico.save() != null

        params.id = centroMedico.id

        def model = controller.edit()

        assert model.centroMedicoInstance == centroMedico
    }

    void testUpdate() {
        controller.update()

        assert flash.message != null
        assert response.redirectedUrl == '/centroMedico/list'

        response.reset()

        populateValidParams(params)
        def centroMedico = new CentroMedico(params)

        assert centroMedico.save() != null

        // test invalid parameters in update
        params.id = centroMedico.id
        //TODO: add invalid values to params object

        controller.update()

        assert view == "/centroMedico/edit"
        assert model.centroMedicoInstance != null

        centroMedico.clearErrors()

        populateValidParams(params)
        controller.update()

        assert response.redirectedUrl == "/centroMedico/show/$centroMedico.id"
        assert flash.message != null

        //test outdated version number
        response.reset()
        centroMedico.clearErrors()

        populateValidParams(params)
        params.id = centroMedico.id
        params.version = -1
        controller.update()

        assert view == "/centroMedico/edit"
        assert model.centroMedicoInstance != null
        assert model.centroMedicoInstance.errors.getFieldError('version')
        assert flash.message != null
    }

    void testDelete() {
        controller.delete()
        assert flash.message != null
        assert response.redirectedUrl == '/centroMedico/list'

        response.reset()

        populateValidParams(params)
        def centroMedico = new CentroMedico(params)

        assert centroMedico.save() != null
        assert CentroMedico.count() == 1

        params.id = centroMedico.id

        controller.delete()

        assert CentroMedico.count() == 0
        assert CentroMedico.get(centroMedico.id) == null
        assert response.redirectedUrl == '/centroMedico/list'
    }
}
