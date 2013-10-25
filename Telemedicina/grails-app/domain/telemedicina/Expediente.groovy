package telemedicina

/**
 * Clase que representa un expediente.
 * @author  Joseph Cruz Monge
 */
class Expediente {

	static mapping = {
		table 'expediente'
		version false
		id generator:'identity', column:'id'
	}
	Long id
	Date fechacreacion
	Date ultimamodificacion
	String nombre
	String primerapellido
	String segundoapellido
	Date fechanacimiento
	String lugarnacimiento
	Integer sexo
	Integer estadocivil
	String direccion
	Integer telefono
	String correo
	String ocupacion
	String tiposangre
	String nombremadre
	String nombrepadre
	java.sql.Blob foto
	String numeroasegurado
	Integer indicadorborrado
	static hasMany = [citas: Cita]

	static constraints = {
		id()
		fechacreacion()
		ultimamodificacion(nullable: true)
		nombre(size: 1..50, blank: false)
		primerapellido(size: 1..50, blank: false)
		segundoapellido(size: 0..50)
		fechanacimiento(nullable: true)
		lugarnacimiento(size: 0..100)
		sexo(nullable: true, max: 2147483647)
		estadocivil(nullable: true, max: 2147483647)
		direccion()
		telefono(nullable: true, max: 2147483647)
		correo(size: 0..100)
		ocupacion(size: 0..100)
		tiposangre(size: 0..3)
		nombremadre(size: 0..150)
		nombrepadre(size: 0..150)
		foto(nullable: true)
		numeroasegurado(size: 0..50)
		indicadorborrado(nullable: true, max: 2147483647)
	}
	String toString() {
		return "${idexpediente}"
	}
}
