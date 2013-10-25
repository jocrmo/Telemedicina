package telemedicina

/**
 * Clase que representa las citas
 * @author  Joseph Cruz Monge
 */
class Cita {

    static mapping = {
		table 'cita'
		version false
		id generator:'identity', column:'id'
		medicoMedico column:'medico'
		estadoEstadocita column:'estado'
		historiaClinica column: 'idhistoriaclinica'
		hojaEvolucion column: 'idhojaevolucion'
		//idexpedienteExpediente column:'idExpediente'
	}
	Long id
	Date fecharegistro
	Date fechacita
	Integer especialidad
	String motivoconsulta
	String referencia
	String lugarreferencia
	String idusuarioregistra
	// Relation
	Medico medicoMedico
	// Relation
	EstadoCita estadoEstadocita
	// Relation
	//Expediente idexpedienteExpediente
	static belongsTo = [expediente: Expediente]
	HistoriaClinica historiaClinica
	HojaEvolucion hojaEvolucion

	static constraints = {
		id()
		fecharegistro(nullable: true)
		fechacita(nullable: true)
		especialidad(max: 2147483647)
		motivoconsulta(blank: false)
		referencia()
		lugarreferencia()
		idusuarioregistra(size: 0..45)
		medicoMedico()
		estadoEstadocita()
		expediente()
	}
	String toString() {
		return "${idcita}"
	}
}
