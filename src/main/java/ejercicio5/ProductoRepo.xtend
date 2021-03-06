package ejercicio5

import org.uqbar.commons.model.annotations.Observable
import org.eclipse.xtend.lib.annotations.Accessors
import org.uqbar.commons.model.annotations.Dependencies

@Observable
@Accessors
class ProductoRepo {
	static ProductoRepo instance
	var Producto producto
	
	static def getInstance() {
		if (instance == null) {
			instance = new ProductoRepo()
		}
		instance
	}
	
	private new() {
	}

	def getProductos() {
		val prod1 = new Producto("Axe", 40)
		val prod2 = new Producto("Fernet", 110)
		val prod3 = new Producto("Manzana x kg", 20.5)
		
		#[prod1, prod2, prod3]
	}
	
//	@Dependencies("producto")
//	def Producto getProducto(){
//		productos.map(producto.description)
//	}
}