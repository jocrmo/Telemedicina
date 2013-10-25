package telemedicina

/**
 * Clase que representa los posibles estados de una cita.
 * @author  Joseph Cruz Monge
 */
class EstadoCita {

	static mapping = {
		table 'estadocita'
		version false
		id generator:'identity', column:'id'
	}
	Integer id
	String descripcion

	static constraints = {
		id()
		descripcion(size: 1..45)
	}
	String toString() {
		return "${descripcion}"
	}
}
