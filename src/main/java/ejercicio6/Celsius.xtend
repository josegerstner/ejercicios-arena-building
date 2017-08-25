package ejercicio6

import org.uqbar.commons.model.annotations.Dependencies
import org.eclipse.xtend.lib.annotations.Accessors

@Accessors
class Celsius {
	var double grados
	
	@Dependencies("grados")
	def double convertir(){
		(grados - 32d) * 5d / 9d
	}
}