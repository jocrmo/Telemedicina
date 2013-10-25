package telemedicina

/**
 * Clase que representa las especialidades.
 * @author  Joseph Cruz Monge  
 */
class Especialidad {
	static mapping = {
		table 'especialidad'
		version false
		id generator:'identity', column:'id'
	}
	Integer id
	String codigo
	String nombre

	static constraints = {
		id()
		codigo(size: 0..45)
		nombre(size: 1..100, blank: false)
	}
	String toString() {
		return "${nombre}"
	}
}
