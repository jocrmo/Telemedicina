package telemedicina

/**
 * Clase que representa los centros médicos.
 * @author  Joseph Cruz Monge
 */
class CentroMedico {

    static mapping = {
		table 'centromedico'
		version false
		id generator:'identity', column:'id'
	}
	Integer id
	String codigo
	String nombre
	String direccion
	Integer telefono

	static constraints = {
		id()
		codigo(size: 1..45, blank: false)
		nombre(size: 1..100, blank: false)
		direccion(size: 1..45, blank: false)
		telefono(nullable: true)
	}
	String toString() {
		return "${nombre}"
	}
}
