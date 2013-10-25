package telemedicina

/**
 * Clase que representa un registro de história clínica.
 * @author  Joseph Cruz Monge
 */
class HistoriaClinica {

    static mapping = {
		table 'historiaclinica'
		version false
		id generator:'identity', column:'id'
		medico column:'idmedico'
		cita column:'idcita'
		especialidad column: 'idespecialidad'
	}
	Long id
	Especialidad especialidad
	String lugar
	Date fecharegistro
	String notasinterrogatorio
	String padecimientoactual
	String antecedenteshereditarios
	String diagnostico
	String tratamiento
	String referencias
	// Relation
	Medico medico
	// Relation
	static belongsTo = [cita:Cita] //Cita cita

	static constraints = {
		id()
		especialidad()
		lugar()
		fecharegistro()
		notasinterrogatorio()
		padecimientoactual()
		antecedenteshereditarios()
		diagnostico()
		tratamiento()
		referencias()
		medico()
		cita()
	}
	String toString() {
		return "${id}"
	}
}
