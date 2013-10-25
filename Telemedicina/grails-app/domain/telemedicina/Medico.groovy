package telemedicina

/**
 * Clase que representa los médicos.
 * @author  Joseph Cruz Monge
 */
class Medico {

    static mapping = {
		table 'medico'
		version false
		id generator:'identity', column:'id'
		idcentromedicoCentromedico column:'idcentromedico'
		idespecialidadEspecialidad column:'idespecialidad'
	}
	Integer id
	Integer codigo
	String cedula
	String nombre
	String apellido1
	String apellido2
	Integer telefono
	Integer telefonoOficina
	Integer ext
	Integer movil
	String email
	// Relation
	CentroMedico idcentromedicoCentromedico
	// Relation
	Especialidad idespecialidadEspecialidad

	static constraints = {
		id()
		codigo(max: 2147483647)
		cedula(size: 1..45, blank: false)
		nombre(size: 1..45, blank: false)
		apellido1(size: 1..45, blank: false)
		apellido2(size: 0..45)
		telefono(max: 2147483647)
		telefonoOficina(nullable: true, max: 2147483647)
		ext(nullable: true, max: 2147483647)
		movil(nullable: true, max: 2147483647)
		email(size: 0..45)
		idcentromedicoCentromedico()
		idespecialidadEspecialidad()
	}
	String toString() {
		return "${nombre} ${apellido1} ${apellido2}"
	}
}
