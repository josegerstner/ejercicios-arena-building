package antiguedadEmpleados

import java.util.List
import java.time.LocalDateTime
import java.time.Month

class EmpleadosRepo {
	var List<Empleado> empleados
	
	new(){
		val Empleado jefe = new Empleado("Pepe", LocalDateTime.of(2007,Month.MARCH,11,6,1), true)
		val Empleado secretaria = new Empleado("Pepa", LocalDateTime.of(2011,Month.JULY,02,6,1), false)
		val Empleado cadete = new Empleado("Pepo", LocalDateTime.of(2015,Month.DECEMBER,15,6,1), false)
		
		empleados = #[jefe, secretaria, cadete]
	}
	
	def getEmpleados(){
		empleados
	}
}