package antiguedadEmpleados

import java.time.LocalDateTime
import java.time.Month
import org.uqbar.commons.model.annotations.Dependencies
import org.uqbar.commons.model.annotations.Observable
import org.eclipse.xtend.lib.annotations.Accessors

@Observable
@Accessors
class EmpleadosDomain {
	var Empleado empleadoSeleccionado
	
	@Dependencies("empleadoSeleccionado")
	def getEmpleados(){
		val Empleado jefe = new Empleado("Pepe", LocalDateTime.of(2007,Month.MARCH,02,6,1), true)
		val Empleado secretaria = new Empleado("Pepa", LocalDateTime.of(2011,Month.JULY,02,6,1), false)
		val Empleado cadete = new Empleado("Pepo", LocalDateTime.of(2011,Month.DECEMBER,02,6,1), false)
		
		#[jefe, secretaria, cadete]
	}
}