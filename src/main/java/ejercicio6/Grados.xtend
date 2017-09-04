package ejercicio6

import org.uqbar.commons.model.annotations.Observable
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Dependencies

@Observable
//@Accessors
class Grados {
	var fahrenheit = new Fahrenheit
	var celsius = new Celsius
	
	@Dependencies("fahrenheit", "celsius")
	def convertir(){
		
	}
}