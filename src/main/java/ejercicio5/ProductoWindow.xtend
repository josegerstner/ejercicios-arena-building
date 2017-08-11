package ejercicio5

import org.uqbar.arena.windows.MainWindow
import org.uqbar.arena.widgets.Panel
import org.uqbar.arena.widgets.Label
import org.uqbar.arena.widgets.Selector
import static extension org.uqbar.arena.xtend.ArenaXtendExtensions.*
import org.uqbar.arena.bindings.ObservableProperty
import org.uqbar.arena.bindings.PropertyAdapter

class ProductoWindow extends MainWindow<Almacen> {
	
	new(){
		super(new Almacen)
	}
	
	override createContents(Panel mainPanel) {
		
		this.title = "Productos: ejercicio5Arena"
		
		new Label(mainPanel).text = "Producto"
		new Selector(mainPanel) => [
			allowNull = false
			val bindItems = items <=> "productoRepo.productos"
//			bindItems(new ObservableProperty(this.modelObject, "productoRepo.productos.precio"))
			bindItems.adapter = new PropertyAdapter(typeof(Producto), "descripcion")
//			value <=> "productoRepo.productos"
		]
		
		new Label(mainPanel).text = "Precio"
		new Label(mainPanel) => [
			bindValue(new ObservableProperty(this.modelObject, "productoRepo.productos.precio"))
			value <=> "producto.precio"
		]
	}	
	def static main(String[] args) {
		new ProductoWindow().startApplication
	}

}
