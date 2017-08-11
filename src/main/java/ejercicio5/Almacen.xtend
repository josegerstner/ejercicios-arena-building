package ejercicio5

import org.uqbar.commons.model.annotations.Observable
import org.eclipse.xtend.lib.annotations.Accessors

@Observable
@Accessors
class Almacen {
	ProductoRepo productoRepo
	
	new(){
		productoRepo = ProductoRepo.instance
	}
	
	def getProducto(){
		productoRepo.productos
	}
}