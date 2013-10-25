package telemedicina

/**
 * Clase que representa una hoja de evolución.
 * @author  Joseph Cruz Monge
 */
class HojaEvolucion {

	static mapping = {
		table 'hojaevolucion'
		version false
		id generator:'identity', column:'id'
		idcitaCita column:'idcita'
	}
	Long idhojaevolucion
	Date fecharegistro
	Integer usuario
	String notasevolucion
	// Relation
	static belongsTo = [cita:Cita] //Cita cita

	static constraints = {
		id()
		fecharegistro(nullable: true)
		usuario(nullable: true, max: 2147483647)
		notasevolucion()
		citaa()
	}
	String toString() {
		return "${idhojaevolucion}"
	}
}
