package ejercicio5

import org.eclipse.xtend.lib.annotations.Accessors
//import org.uqbar.commons.model.annotations.Observable
//import org.uqbar.commons.model.annotations.Dependencies

@Accessors
class Producto{
	val String descripcion
	val double precio
	
	new(String desc, double prec){
		descripcion = desc
		precio = prec
	}
	
	override toString() {
		descripcion
	}
	def getPrecio(){
		precio
	}
}