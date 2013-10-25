package telemedicina

/**
 * Clase que representa las bitácoras.
 * @author  Joseph Cruz Monge
 */
class Bitacora {

    static mapping = {
		table 'bitacora'
		version false
		id generator:'identity', column:'id'
		idoperacionOperacion column:'idoperacion'
	}
	Long id
	Long idusuario
	Date fecha
	// Relation
	Operacion idoperacionOperacion

	static constraints = {
		id()
		idusuario(nullable: false)
		fecha(nullable: false)
		idoperacionOperacion()
	}
	String toString() {
		return "${id}"
	}
}
