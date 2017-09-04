package ejercicio6

import org.uqbar.commons.model.annotations.Dependencies
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class Fahrenheit {
	var double grados
	
	@Dependencies("grados")
	def double convertir(){
		(grados * 9d / 5d) + 32d
	}
}