package telemedicina

/**
 * Clase que representa los objetos de tipo operacións.
 * @author  Joseph Cruz Monge
 */
class Operacion {

    static mapping = {
		table 'operacion'
		version false
		id generator:'identity', column:'id'
	}
	Long id
	String nombre

	static constraints = {
		id()
		nombre(size: 0..100)
	}
	String toString() {
		return "${nombre}"
	}
}
