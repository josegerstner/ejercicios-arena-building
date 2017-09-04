package antiguedadEmpleados

import org.uqbar.commons.model.annotations.Dependencies
import org.uqbar.commons.model.annotations.Observable
import org.eclipse.xtend.lib.annotations.Accessors

@Observable
@Accessors
class EmpleadosDomain {
	var Empleado empleadoSeleccionado
	val EmpleadosRepo repo = new EmpleadosRepo
	
	def getEmpleados(){
		repo.getEmpleados
	}

	@Dependencies("empleadoSeleccionado")
	def getFechaIngreso(){
		empleadoSeleccionado.fechaIngreso
	}
	@Dependencies("empleadoSeleccionado")
	def getAntiguedad(){
		empleadoSeleccionado.antiguedad
	}
	@Dependencies("empleadoSeleccionado")
	def getTieneHijos(){
		empleadoSeleccionado.tieneHijos
	}
}