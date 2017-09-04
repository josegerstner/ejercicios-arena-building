package antiguedadEmpleados

import java.time.LocalDateTime
import org.uqbar.commons.model.annotations.Observable
import org.eclipse.xtend.lib.annotations.Accessors

@Observable
@Accessors
class Empleado {
	String nombre
	LocalDateTime fechaIngreso
	boolean tieneHijos
	
	new(String nombre, LocalDateTime fechaIngreso, boolean tieneHijos){
		this.nombre = nombre
		this.fechaIngreso = fechaIngreso
		this.tieneHijos = tieneHijos
	}
	
	protected def anioIngreso(){
		fechaIngreso.getYear.toString
	}
	
	protected def mesIngreso(){
		fechaIngreso.getMonthValue.toString
	}
	
	protected def getDiaIngreso(){
		fechaIngreso.getDayOfMonth.toString		
	}
	
	def String getFechaIngreso(){
		diaIngreso + "/" + mesIngreso + "/" + anioIngreso
	}
	
	def int getAntiguedad(){
		LocalDateTime.now.year - fechaIngreso.year
	}
	
	override toString(){
		nombre
	}
}